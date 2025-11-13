import 'package:flutter/material.dart';
import 'package:grocery_project/core/utility/widgets/product_card_widget.dart';
import 'package:grocery_project/model/product_model.dart';
import 'package:grocery_project/provider/product_provider.dart';
import 'package:provider/provider.dart';

class ProductsByCategoryScreen extends StatelessWidget {
  const ProductsByCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String categoryName = ModalRoute.of(context)!.settings.arguments as String;

    final List<ProductModel> filteredList = context
        .read<ProductProvider>()
        .productList
        .where((p) => p.categories.toLowerCase() == categoryName.toLowerCase())
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName, style: const TextStyle(fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),

        child: filteredList.isEmpty
            ? const Center(
                child: Text(
                  "No products found in this category",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              )
            : GridView.builder(
                itemCount: filteredList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  return ProductCardWidget(product: filteredList[index]);
                },
              ),
      ),
    );
  }
}
