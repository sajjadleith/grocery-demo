import 'package:flutter/widgets.dart';
import 'package:grocery_project/model/product_model.dart';

class CartProvider extends ChangeNotifier {
  List<ProductModel> cartList = [];
  double totalPrice = 0.0;
  void addToCart(ProductModel product) {
    if (cartList.contains(product)) {
      product.cartQty++;
    } else {
      product.cartQty = 1;
      cartList.add(product);
    }
    calculateTotalPrice();
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

  void increase(ProductModel product) {
    product.cartQty++;
    calculateTotalPrice();
    notifyListeners();
  }

  void decrease(ProductModel product) {
    if (product.cartQty < 1 || product.cartQty == 0) {
      cartList.remove(product);
    } else {
      product.cartQty--;
    }
    calculateTotalPrice();
    notifyListeners();
  }

  void calculateTotalPrice() {
    double sum = 0.0;

    for (var item in cartList) {
      sum += item.price * item.cartQty;
    }

    totalPrice = sum;
    notifyListeners();
  }
}
