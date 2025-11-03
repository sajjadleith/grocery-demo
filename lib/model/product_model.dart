import '../core/app_assets.dart';

class ProductModel {
  final String name;
  final String pcs;
  final String image;
  final double price;
  String? desc;

  ProductModel({required this.name, required this.pcs, this.desc, required this.image, required this.price});
}

List<ProductModel> productList = [
  ProductModel(name: "Sprite Can", pcs: "325ml, Price", image: AppAssets.sprite, price: 1.50),
  ProductModel(name: "Diet Coke", pcs: "355ml, Price", image: AppAssets.coca, price: 1.99),
  ProductModel(name: "Sprite Can", pcs: "325ml, Price", image: AppAssets.sprite, price: 1.50),
  ProductModel(name: "Sprite Can", pcs: "325ml, Price", image: AppAssets.sprite, price: 1.50),
  ProductModel(name: "Sprite Can", pcs: "325ml, Price", image: AppAssets.sprite, price: 1.50),
  ProductModel(name: "Sprite Can", pcs: "325ml, Price", image: AppAssets.sprite, price: 1.50),
  ProductModel(name: "Sprite Can", pcs: "325ml, Price", image: AppAssets.sprite, price: 1.50),
  ProductModel(name: "Sprite Can", pcs: "325ml, Price", image: AppAssets.sprite, price: 1.50),
  ProductModel(name: "Sprite Can", pcs: "325ml, Price", image: AppAssets.sprite, price: 1.50),
  ProductModel(name: "Sprite Can", pcs: "325ml, Price", image: AppAssets.sprite, price: 1.50),
  ProductModel(name: "Sprite Can", pcs: "325ml, Price", image: AppAssets.sprite, price: 1.50),
];
