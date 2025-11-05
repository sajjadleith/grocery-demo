import 'package:flutter/material.dart';
import 'package:grocery_project/model/product_model.dart';
import 'package:grocery_project/view/widget/app_bar_widget.dart';
import 'package:grocery_project/view/widget/custome_button_widget.dart';

import '../widget/card_cart_widget.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final String imageUrl = "https://picsum.photos/200/300.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBarWidget(title: 'My Cart'),
            ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final product = productList[index];
                return CardCartWidget(
                  imageUrl: imageUrl,
                  title: product.name,
                  subTitle: product.pcs,
                  price: product.price,
                );
              },
              separatorBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Divider(thickness: 1, color: Colors.grey[700]),
                );
              },
              itemCount: productList.length,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SizedBox(
          child: CutomeButtonWidgetWithRow(title: "Go To Check Out", onPressed: () {}, totalPrice: 312),
        ),
      ),
    );
  }
}
