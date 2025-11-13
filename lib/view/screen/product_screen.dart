import 'package:flutter/material.dart';

import '../widget/app_bar_product_widget.dart';
import '../widget/product_item_widget.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: AppBarProductWidget(title: "Beverages"),
              ),
              SizedBox(height: 20),
              ProductItemSearchWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
