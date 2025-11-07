import 'package:flutter/material.dart';
import 'package:grocery_project/core/routes/app_routes.dart';

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
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.detailsPage);
            },
            borderRadius: BorderRadius.circular(12),
            child: ProductCardWidget(product: products),
          );
        },
        separatorBuilder: (_, _) {
          return SizedBox(width: 10);
        },
      ),
    );
  }
}
