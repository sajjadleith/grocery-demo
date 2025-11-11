import 'package:flutter/material.dart';
import 'package:grocery_project/provider/product_provider.dart';
import 'package:provider/provider.dart';

import '../../core/utility/widgets/product_card_widget.dart';
import '../../model/product_model.dart';

class ProductItemSearchWidget extends StatelessWidget {
  const ProductItemSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    final provider = context.watch<ProductProvider>().filteredProducts;
    return provider.isEmpty
        ? Container(
            margin: EdgeInsets.only(top: height / 3),
            child: Text("Search an Item you need !", style: TextStyle(fontSize: 15)),
          )
        : GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 14,
              mainAxisSpacing: 14,
              childAspectRatio: width < 400 ? 0.74 : 0.8,
            ),
            itemCount: provider.length,
            itemBuilder: (context, index) {
              // final product = productList[index];
              return Selector<ProductProvider, ProductModel>(
                builder: (context, value, child) => ProductCardWidget(product: value),
                selector: (context, prov) => prov.filteredProducts[index],
              );
            },
          );
  }
}
