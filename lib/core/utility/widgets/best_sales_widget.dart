import 'package:flutter/material.dart';
import 'package:grocery_project/core/utility/widgets/product_card_widget.dart';
import 'package:grocery_project/provider/product_provider.dart';
import 'package:provider/provider.dart';

import '../../../model/product_model.dart';

class BestSalesWidget extends StatelessWidget {
  const BestSalesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 154,
      height: 248,
      child: Consumer<ProductProvider>(
        builder: (context, productProvider, child) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: productProvider.productList.length,
            itemBuilder: (context, index) {
              final products = productProvider.productList[index];
              return ProductCardWidget(product: products);
            },
            separatorBuilder: (_, _) {
              return SizedBox(width: 10);
            },
          );
        },
      ),
    );
  }
}
