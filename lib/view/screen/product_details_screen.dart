import 'package:flutter/material.dart';
import 'package:grocery_project/core/app_assets.dart';
import 'package:grocery_project/core/utility/widgets/customDivider_widget.dart';
import 'package:grocery_project/core/utility/widgets/customExpansion_widget.dart';
import 'package:grocery_project/view/widget/custome_button_widget.dart';
import 'package:grocery_project/view/widget/row_detail_price.dart';
import 'package:grocery_project/view/widget/row_detail_widget.dart';
import 'package:grocery_project/view/widget/slider_detail_widget.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SliderDetailWidget(),
            SizedBox(height: 30),
            RowDetailWidget(),
            SizedBox(height: 30),
            RowDetailPrice(),
            SizedBox(height: 30),
            CustomdividerWidget(),
            SizedBox(height: 18),
            CustomexpansionWidget(),
            SizedBox(height: 5),
            CustomdividerWidget(),
            SizedBox(height: 5),
            CustomExpansioinWidget2(),
            SizedBox(height: 5),
            CustomdividerWidget(),
            CustomExpansionReviewWidget(title: "Review", icon: AppAssets.fiveStars),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
              child: CustomeButtonWidget(title: "Add To Basket", onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
