import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier {

  int _count = 0;
  int _tabState = -1;

  
  int get getCount => _count;

  void increaseCount(){
    _count += 1;
    notifyListeners();
  }

  void decreaseCount(){
    _count -= 1;
    notifyListeners();
  }

  void setCount(int newCount) {
    _count = newCount;
    notifyListeners();
  }

  int get tabState => _tabState;

  set tabState(int newState) {
    _tabState = newState;
    notifyListeners();
  }
}
