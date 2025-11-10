class CategoryModel {
  final String id;
  final String name;

  CategoryModel({required this.id, required this.name});
}

List<String> get categories => [
  'Fruits',
  'Vegetables',
  'Dairy',
  'Bakery',
  'Meat',
  'Beverages',
  'Snacks',
  'Frozen Foods',
  'Household Supplies',
  'Personal Care',
];
