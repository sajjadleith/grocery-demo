import 'package:flutter/material.dart';
import '../model/product_model.dart';

class ProductProvider extends ChangeNotifier {
  List<ProductModel> filteredProducts = productList;

  final Map<String, bool> selectedCategories = {};
  final Map<String, bool> selectedBrands = {};

  void toggleCategory(String category, bool value) {
    selectedCategories[category] = value;
    notifyListeners();
  }

  void toggleBrand(String brand, bool value) {
    selectedBrands[brand] = value;
    notifyListeners();
  }

  void applyFilter() {
    final selectedCats = selectedCategories.entries
        .where((e) => e.value)
        .map((e) => e.key)
        .toList();
    final selectedBrds = selectedBrands.entries.where((e) => e.value).map((e) => e.key).toList();

    filteredProducts = productList.where((product) {
      final matchCategory = selectedCats.isEmpty || selectedCats.contains(product.categories);
      final matchBrand = selectedBrds.isEmpty || selectedBrds.contains(product.brand);
      return matchCategory && matchBrand;
    }).toList();

    notifyListeners();
  }

  void clearFilter() {
    selectedCategories.clear();
    selectedBrands.clear();
    filteredProducts = productList;
    notifyListeners();
  }
}
