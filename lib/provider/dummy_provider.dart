import 'package:flutter/material.dart';

class DummyProvider extends ChangeNotifier {
  String name = "ali";
  int age = 22;
  changeName(String n) {
    name = n;

    notifyListeners();
  }

  changeAge(int a) {
    age = a;
    notifyListeners();
  }
}
