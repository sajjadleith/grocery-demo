class ProductModel {
  final String name;
  final String pcs;
  final String image;
  final double price;
  String? desc;
  final String categories;
  final String brand;

  ProductModel({
    required this.name,
    required this.pcs,
    this.desc,
    required this.image,
    required this.price,
    required this.categories,
    required this.brand,
  });
}

List<ProductModel> productList = [
  ProductModel(
    name: 'Apple',
    pcs: '1 kg',
    image: 'https://picsum.photos/200?fruit=apple',
    price: 2.5,
    desc: 'Fresh red apples rich in fiber and vitamins.',
    categories: 'Fruits',
    brand: 'FreshFarm',
  ),
  ProductModel(
    name: 'Banana',
    pcs: '1 dozen',
    image: 'https://picsum.photos/200?fruit=banana',
    price: 1.8,
    desc: 'Sweet ripe bananas perfect for snacks and smoothies.',
    categories: 'Fruits',
    brand: 'TropicalGold',
  ),
  ProductModel(
    name: 'Orange Juice',
    pcs: '1 liter',
    image: 'https://picsum.photos/200?drink=orangejuice',
    price: 3.0,
    desc: '100% natural orange juice with no added sugar.',
    categories: 'Drinks',
    brand: 'SunFresh',
  ),
  ProductModel(
    name: 'Tomato',
    pcs: '1 kg',
    image: 'https://picsum.photos/200?veg=tomato',
    price: 1.2,
    desc: 'Fresh organic tomatoes great for salads and cooking.',
    categories: 'Vegetables',
    brand: 'GreenLeaf',
  ),
  ProductModel(
    name: 'Potato',
    pcs: '2 kg',
    image: 'https://picsum.photos/200?veg=potato',
    price: 1.5,
    desc: 'High-quality golden potatoes ideal for frying and mashing.',
    categories: 'Vegetables',
    brand: 'FarmersChoice',
  ),
  ProductModel(
    name: 'Milk',
    pcs: '1 liter',
    image: 'https://picsum.photos/200?drink=milk',
    price: 1.0,
    desc: 'Fresh full cream milk rich in calcium.',
    categories: 'Dairy',
    brand: 'PureDairy',
  ),
  ProductModel(
    name: 'Bread',
    pcs: '1 loaf',
    image: 'https://picsum.photos/200?food=bread',
    price: 1.2,
    desc: 'Soft white bread baked fresh every morning.',
    categories: 'Bakery',
    brand: 'BakeHouse',
  ),
  ProductModel(
    name: 'Eggs',
    pcs: '12 pcs',
    image: 'https://picsum.photos/200?food=eggs',
    price: 2.2,
    desc: 'Farm fresh eggs with high protein content.',
    categories: 'Dairy',
    brand: 'GoldenHen',
  ),
  ProductModel(
    name: 'Cucumber',
    pcs: '1 kg',
    image: 'https://picsum.photos/200?veg=cucumber',
    price: 1.4,
    desc: 'Crisp and refreshing cucumbers perfect for salads.',
    categories: 'Vegetables',
    brand: 'GreenLeaf',
  ),
  ProductModel(
    name: 'Strawberry Yogurt',
    pcs: '500 ml',
    image: 'https://picsum.photos/200?drink=yogurt',
    price: 2.8,
    desc: 'Creamy yogurt with real strawberry flavor.',
    categories: 'Dairy',
    brand: 'YogoFresh',
  ),
];
