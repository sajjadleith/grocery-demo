import 'dart:math';

import 'package:flutter/material.dart';

import '../../model/groceries_model.dart';

class GroceriesCardItemWidget extends StatelessWidget {
  const GroceriesCardItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var random = Random();
    return SizedBox(
      height: 105,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final product = groceriesList[index];
          return Container(
            width: 248,
            height: 105,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: groceriesList[random.nextInt(groceriesList.length)].color,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(product.image, width: 72, height: 72),
                Expanded(
                  child: Text(
                    product.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (_, _) {
          return SizedBox(width: 15);
        },
        itemCount: groceriesList.length,
      ),
    );
  }
}
