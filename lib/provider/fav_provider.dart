import 'package:flutter/cupertino.dart';

import '../model/product_model.dart';

class FavProvider extends ChangeNotifier {
  List<ProductModel> favList = [];

  void toggleFav(ProductModel product) {
    product.isFav = !product.isFav;

    if (product.isFav) {
      favList.add(product);
    } else {
      favList.remove(product);
    }

    notifyListeners();
  }

  bool isFav(ProductModel product) {
    return product.isFav;
  }
}
