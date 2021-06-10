import 'package:basicappflutter/core/notifiers/counter_notifier.dart';
import 'package:basicappflutter/meta/views/home_view/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // we can also declare this changeNotifierProvider in HomeView, but there we'll need to declare it under a stateful widget
      create: (_) => //_ inside (), here is the context
          CounterNotifier(), //In create we passed null which refers to CounterNotifier, the provder that we created
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: HomeView(),
        debugShowCheckedModeBanner: false,
      ),
    );

    //Commented material to put Notifier provider here
    // return MaterialApp(
    //   home: HomeView(),
    //   debugShowCheckedModeBanner: false,
    // );
  }
}
