import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier {

  int _count = 0;

  
  int get getCount => _count;

  void increaseCount(){
    _count += 1;
    notifyListeners();
  }

  void decreaseCount(){
    _count -= 1;
    notifyListeners();
  }

}
