import 'package:flutter/material.dart';

// Base of state of entire of our app
// this change notifier is repository of our data, through this we provide all the data to our application

class CounterNotifier extends ChangeNotifier {
  //Counter Notifier is name of our change notifier
  int _counter = 0;
  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners(); //used to update the data(state of the current method)
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}

// this whole is repository of our state in CounterNotifier i.e. our change notifier

// here we have declared a single change notifier...now we will go on to main.dart to add some change changeNotifierProvider....if we have multiple change notifiers in a project, then we will add multiple providers in main.dart

//In counterNotifier(provider) we see that there is no context, but in stateful widget ...context will be used

// we want value from counter notifier to be read by homeView, so we will keep homeView's context same as state held by counterNotifier