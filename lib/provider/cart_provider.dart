import 'package:flutter/widgets.dart';
import 'package:grocery_project/model/product_model.dart';

class CartProvider extends ChangeNotifier {
  List<ProductModel> cartList = [];
  void addToCart(ProductModel product) {
    if (cartList.contains(product)) {
      product.cartQty++;
    } else {
      product.cartQty = 1;
      cartList.add(product);
    }
    notifyListeners();
  }

  void removeCart(ProductModel product) {
    if (cartList.contains(product)) {
      cartList.remove(product);
    } else {
      null;
    }
    notifyListeners();
  }
}
