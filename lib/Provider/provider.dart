import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier{
  int _counter=0;

  int get getCounter => _counter;

   incrementCounter(){
    _counter++;
    notifyListeners();
  }
}