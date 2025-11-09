import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_project/core/app_assets.dart';
import 'package:grocery_project/core/theme_color.dart';
import 'package:grocery_project/view/widget/custome_button_widget.dart';

class OrderAcceptedScreen extends StatefulWidget {
  OrderAcceptedScreen({Key? key}) : super(key: key);

  @override
  _OrderAcceptedScreenState createState() => _OrderAcceptedScreenState();
}

class _OrderAcceptedScreenState extends State<OrderAcceptedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(AppAssets.imageBlur)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: SvgPicture.asset(AppAssets.imageCheckout)),
                  SizedBox(height: 66),
                  Container(
                    width: 290,
                    // height: 68,
                    alignment: Alignment.center,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Your Order has been accepted",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 290,
                    // height: 68,
                    alignment: Alignment.center,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Your items has been placcd and is on it’s way to being processed",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: ThemeColor.thirdColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: CustomeButtonWidget(title: "Track Order", onPressed: () {}),
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(12),
                    splashColor: Colors.green,
                    child: Ink(
                      width: 150,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          "Back to home",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
