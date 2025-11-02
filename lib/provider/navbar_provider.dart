import 'package:flutter/cupertino.dart';
import '../view/screen/accound_screen.dart';
import '../view/screen/cart_screen.dart';
import '../view/screen/explore_screen.dart';
import '../view/screen/favourite_screen.dart';
import '../view/screen/shop_screen.dart';

class NavBarProvider extends ChangeNotifier {
  List<Widget> screens = [ShopScreen(), ExploreScreen(), CartScreen(), FavouriteScreen(), AccoundScreen()];

  int currentIndex = 0;
  changeCurrentNavScreen(int i) {
    currentIndex = i;
    notifyListeners();
  }
}
