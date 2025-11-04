import 'package:flutter/material.dart';
import 'package:grocery_project/core/routes/app_routes.dart';

import '../../model/groceries_model.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemCount: groceriesList.length,
      itemBuilder: (context, index) {
        final product = groceriesList[index];
        return InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.productPage);
          },
          child: Ink(
            width: 175,
            height: 190,
            padding: const EdgeInsetsGeometry.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: product.color.withValues(alpha: .5),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: product.color),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(product.image, width: 111, height: 75),
                const SizedBox(height: 20),
                Center(child: Text(product.name, maxLines: 2, overflow: TextOverflow.ellipsis)),
              ],
            ),
          ),
        );
      },
    );
  }
}
