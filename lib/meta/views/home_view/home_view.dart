import 'package:basicappflutter/core/notifiers/counter_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// HomeView(always comment the class being declared below it)
class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // int counter = 0;
  // void increment() {
  //   setState(() {
  //     counter++; // SET STATE method helps in increasing state of the counter
  //   });
  //   print(counter);
  // }

  // void decrement() {
  //   setState(() {
  //     counter--; // SET STATE method helps in increasing state of the counter
  //   });
  //   print(counter);
  // }

  @override
  Widget build(BuildContext context) {
    var _counterNotifier = Provider.of<CounterNotifier>(context, listen: false);
    //Listen: true...then rendering the UI
    //Listen: False...Rendering the UI's STATE
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Container(
        child: Center(
          child: Consumer<CounterNotifier>(
            // we made Change Notifier, then made Change notifier provider....now we're consuming the value...type of consumer being counterNotifier
            builder: (context, notifier, _) {
              //Builder is being used to render the value..meanwhile consumer just holds the data
              //consumer requires a builder...in which we pass context,notifier, and empty child or null(_)
              //state helps us HomeView to have context state same as that in counter Notifier
              //Notifier in btween is instance of counter notifier
              return Text(
                notifier.counter
                    .toString(), //the value it prints is due to getter inside the counter notifier...Notifier is instance of counterNotifier class, while counter is a varliable that the class holds...the value yielded is an int so we parse it as string
                style: TextStyle(fontSize: 30.0),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          //INDEX is by default from zero
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.tealAccent,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.tealAccent,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_collection_rounded,
              color: Colors.tealAccent,
            ),
            label: "Add Videos",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_a_photo,
              color: Colors.tealAccent,
            ),
            label: "Add Photos",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet,
              color: Colors.tealAccent,
            ),
            label: "Wallet",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.tealAccent,
            ),
            label: "Profile",
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => _counterNotifier.increment(),
            //We will not be using consumer to increase the counter Value...it only helps us in consuming(reading) the value
            // to increase the counter, we need to declare some separate instance our counterNotifier i.e. Provider
            child: Icon(
              Icons.add,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          FloatingActionButton(
            onPressed: () => _counterNotifier.decrement(),
            //We will not be using consumer to increase the counter Value...it only helps us in consuming(reading) the value
            // to increase the counter, we need to declare some separate instance our counterNotifier i.e. Provider
            child: Icon(
              Icons.remove,
            ),
          ),
        ],
      ),

      //continue watching from 1 hr 39 min 19 sec

      // ================All code below contains the widgets we can use inside a Scaffold=================

      // drawer: Drawer(),
      // appBar: AppBar(),
      // body: Container(
      //   color: Colors.redAccent,
      // ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {},
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     //this items list must contain atleast two BottomNavigationBarItems or more than that
      //   ],
      // ),
    );
  }
}
