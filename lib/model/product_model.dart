class ProductModel {
  final String name;
  final String pcs;
  final String image;
  final double price;
  String? desc;

  ProductModel({required this.name, required this.pcs, this.desc, required this.image, required this.price});
}
