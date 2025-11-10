import 'package:flutter/material.dart';
import 'package:grocery_project/core/app_assets.dart';

class GroceriesModel {
  final String name;
  final String image;
  final Color color;

  GroceriesModel({required this.name, required this.image, required this.color});
}

final List<GroceriesModel> groceriesList = [
  GroceriesModel(name: 'Fruits', image: AppAssets.im, color: Colors.red.shade100),
  GroceriesModel(name: 'Vegetables', image: AppAssets.im, color: Colors.yellow.shade100),
  GroceriesModel(name: 'Dairy', image: AppAssets.im, color: Colors.purple.shade100),
  GroceriesModel(name: 'Bakery', image: AppAssets.im, color: Colors.orange.shade100),
  GroceriesModel(name: 'Meat', image: AppAssets.im, color: Colors.green.shade100),
  GroceriesModel(name: 'Beverages', image: AppAssets.im, color: Colors.green.shade100),
  GroceriesModel(name: 'Frozen Foods', image: AppAssets.im, color: Colors.green.shade100),
  GroceriesModel(name: 'Household Supplies', image: AppAssets.im, color: Colors.green.shade100),
  GroceriesModel(name: 'Personal Care', image: AppAssets.im, color: Colors.green.shade100),
];
