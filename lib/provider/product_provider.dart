import 'package:flutter/material.dart';
import 'package:grocery_project/model/product_model.dart';

class ProductProvider extends ChangeNotifier {
  List<ProductModel> allProduct = [];
  List<ProductModel> filteredProduct = [];
  ProductProvider() {
    allProduct = productList;
    filteredProduct = allProduct;
  }

  void applyFilter(String? category, String? brand) {
    filteredProduct = allProduct.where((p) {
      final matchedCategory =
          category == null || category == "Fruits" || p.categories == category;
      final matchedBrand = brand == null || p.brand == brand;
      return matchedCategory && matchedBrand;
    }).toList();
    notifyListeners();
  }
}
