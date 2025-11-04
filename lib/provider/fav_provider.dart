import 'package:flutter/material.dart';

class FavProvider extends ChangeNotifier {
  bool isFav = false;
  changeFav(bool fav) {
    isFav = fav;
    notifyListeners();
  }
}
