import 'package:flutter/material.dart';

import '../../core/utility/widgets/product_card_widget.dart';
import '../../model/product_model.dart';

class ExclusiveOfferWidget extends StatelessWidget {
  const ExclusiveOfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 154,
      height: 238,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: productList.length,
        itemBuilder: (context, index) {
          final products = productList[index];
          return ProductCardWidget(product: products);
        },
        separatorBuilder: (_, _) {
          return SizedBox(width: 10);
        },
      ),
    );
  }
}
