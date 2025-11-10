import 'package:flutter/material.dart';
import 'package:grocery_project/core/app_assets.dart';

class GroceriesModel {
  final String name;
  final String image;
  final Color color;

  GroceriesModel({
    required this.name,
    required this.image,
    required this.color,
  });
}

final List<GroceriesModel> groceriesList = [
  GroceriesModel(name: 'x', image: AppAssets.im, color: Colors.red.shade100),
  GroceriesModel(
    name: 'Bananas',
    image: AppAssets.im,
    color: Colors.yellow.shade100,
  ),
  GroceriesModel(
    name: 'Grapes',
    image: AppAssets.im,
    color: Colors.purple.shade100,
  ),
  GroceriesModel(
    name: 'Oranges',
    image: AppAssets.im,
    color: Colors.orange.shade100,
  ),
  GroceriesModel(
    name: 'Watermelon',
    image: AppAssets.im,
    color: Colors.green.shade100,
  ),
  GroceriesModel(
    name: 'Watermelon',
    image: AppAssets.im,
    color: Colors.green.shade100,
  ),
  GroceriesModel(
    name: 'Watermelon',
    image: AppAssets.im,
    color: Colors.green.shade100,
  ),
  GroceriesModel(
    name: 'Watermelon',
    image: AppAssets.im,
    color: Colors.green.shade100,
  ),
];
