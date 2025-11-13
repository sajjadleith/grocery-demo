class ProductModel {
  final String name;
  final String pcs;
  final String image;
  final double price;
  String? desc;
  String categories;
  final String brand;
  bool isFav;

  ProductModel({required this.name, required this.pcs, this.desc, required this.image, required this.price, required this.categories, required this.brand, required this.isFav});
}
