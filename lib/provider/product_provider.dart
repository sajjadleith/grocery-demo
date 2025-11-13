import 'package:flutter/material.dart';

import '../model/product_model.dart';

class ProductProvider extends ChangeNotifier {
  List<ProductModel> productList = [
    ProductModel(
      name: 'Apple',
      pcs: '1 kg',
      image: 'https://picsum.photos/200?fruit=apple',
      price: 2.5,
      desc: 'Fresh red apples rich in fiber and vitamins.',
      categories: 'Fruits',
      brand: 'FreshFarm',
      isFav: false,
    ),
    ProductModel(
      name: 'Banana',
      pcs: '1 dozen',
      image: 'https://picsum.photos/200?fruit=banana',
      price: 1.8,
      desc: 'Sweet ripe bananas perfect for snacks and smoothies.',
      categories: 'Fruits',
      brand: 'TropicalGold',
      isFav: false,
    ),
    ProductModel(
      name: 'Orange Juice',
      pcs: '1 liter',
      image: 'https://picsum.photos/200?drink=orangejuice',
      price: 3.0,
      desc: '100% natural orange juice with no added sugar.',
      categories: 'Drinks',
      brand: 'SunFresh',
      isFav: false,
    ),
    ProductModel(
      name: 'Tomato',
      pcs: '1 kg',
      image: 'https://picsum.photos/200?veg=tomato',
      price: 1.2,
      desc: 'Fresh organic tomatoes great for salads and cooking.',
      categories: 'Vegetables',
      brand: 'GreenLeaf',
      isFav: false,
    ),
    ProductModel(
      name: 'Potato',
      pcs: '2 kg',
      image: 'https://picsum.photos/200?veg=potato',
      price: 1.5,
      desc: 'High-quality golden potatoes ideal for frying and mashing.',
      categories: 'Vegetables',
      brand: 'FarmersChoice',
      isFav: false,
    ),
    ProductModel(
      name: 'Milk',
      pcs: '1 liter',
      image: 'https://picsum.photos/200?drink=milk',
      price: 1.0,
      desc: 'Fresh full cream milk rich in calcium.',
      categories: 'Dairy',
      brand: 'PureDairy',
      isFav: false,
    ),
    ProductModel(
      name: 'Bread',
      pcs: '1 loaf',
      image: 'https://picsum.photos/200?food=bread',
      price: 1.2,
      desc: 'Soft white bread baked fresh every morning.',
      categories: 'Bakery',
      brand: 'BakeHouse',
      isFav: false,
    ),
    ProductModel(
      name: 'Eggs',
      pcs: '12 pcs',
      image: 'https://picsum.photos/200?food=eggs',
      price: 2.2,
      desc: 'Farm fresh eggs with high protein content.',
      categories: 'Dairy',
      brand: 'GoldenHen',
      isFav: false,
    ),
    ProductModel(
      name: 'Cucumber',
      pcs: '1 kg',
      image: 'https://picsum.photos/200?veg=cucumber',
      price: 1.4,
      desc: 'Crisp and refreshing cucumbers perfect for salads.',
      categories: 'Vegetables',
      brand: 'GreenLeaf',
      isFav: false,
    ),
    ProductModel(
      name: 'Strawberry Yogurt',
      pcs: '500 ml',
      image: 'https://picsum.photos/200?drink=yogurt',
      price: 2.8,
      desc: 'Creamy yogurt with real strawberry flavor.',
      categories: 'Dairy',
      brand: 'YogoFresh',
      isFav: false,
    ),
  ];

  List<ProductModel> filteredProducts = [];

  Map<String, bool> selectedCategories = {};
  Map<String, bool> selectedBrands = {};

  toggleCategory(String category, bool value) {
    selectedCategories[category] = value;
    notifyListeners();
  }

  toggleBrand(String brand, bool value) {
    selectedBrands[brand] = value;
    notifyListeners();
  }

  searchFilter({String search = ""}) {
    var selectedCats = selectedCategories.entries.where((e) => e.value).map((e) => e.key).toList();
    var selectedBrds = selectedBrands.entries.where((e) => e.value).map((e) => e.key).toList();

    if (selectedCats.isEmpty && selectedBrds.isEmpty) {
      filteredProducts = productList.where((product) {
        return product.name.toLowerCase().contains(search.toString());
      }).toList();
    } else {
      filteredProducts = productList.where((product) {
        final matchCategory = selectedCats.isEmpty || selectedCats.contains(product.categories);
        final matchBrand = selectedBrds.isEmpty || selectedBrds.contains(product.brand);
        return product.name.toLowerCase().contains(search.toString()) && matchCategory && matchBrand;
      }).toList();
    }

    notifyListeners();
  }

  applyFilter() {
    var selectedCats = selectedCategories.entries.where((e) => e.value).map((e) => e.key).toList();
    var selectedBrds = selectedBrands.entries.where((e) => e.value).map((e) => e.key).toList();

    filteredProducts = productList.where((product) {
      final matchCategory = selectedCats.isEmpty || selectedCats.contains(product.categories);
      final matchBrand = selectedBrds.isEmpty || selectedBrds.contains(product.brand);
      return matchCategory && matchBrand;
    }).toList();

    notifyListeners();
  }

  clearSearchFilter() {
    filteredProducts.clear();
    notifyListeners();
  }

  clearFilter() {
    selectedCategories.clear();
    selectedBrands.clear();
    filteredProducts.clear();
    notifyListeners();
  }
}
