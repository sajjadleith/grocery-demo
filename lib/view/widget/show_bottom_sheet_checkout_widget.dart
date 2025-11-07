import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_project/core/app_assets.dart';
import 'package:grocery_project/core/theme_color.dart';
import 'package:grocery_project/core/utility/widgets/customDivider_widget.dart';
import 'package:grocery_project/core/utility/widgets/customExpansion_widget.dart';
import 'package:grocery_project/view/widget/custome_button_widget.dart';

class ShowBottomSheetCheckoutWidget {
  static void showBottomSheetCheckout(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: const Color(0xffF2F3F2),
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            width: double.infinity,
            // height: 700,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Checkout", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        borderRadius: BorderRadius.circular(12),
                        child: Ink(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                          child: SvgPicture.asset(AppAssets.cancel),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                CustomdividerWidget(),
                SizedBox(height: 10),
                CustomExpansionCheckout(title: "Delivery", subTitle: "Select Method"),
                SizedBox(height: 10),
                CustomdividerWidget(),
                SizedBox(height: 10),
                CustomExpansionReviewWidget(title: "Payment", icon: AppAssets.masterCart),
                SizedBox(height: 10),
                CustomdividerWidget(),
                SizedBox(height: 10),
                CustomExpansionCheckout(title: "Promo Code", subTitle: "Pick discount"),
                SizedBox(height: 10),
                CustomdividerWidget(),
                SizedBox(height: 10),
                CustomExpansionCheckout(title: "Total Cost", subTitle: "\$13.97"),
                SizedBox(height: 10),
                CustomdividerWidget(),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Text.rich(
                    TextSpan(
                      text: "By placing an order you agree to our ",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ThemeColor.thirdColor,
                      ),
                      children: [
                        TextSpan(
                          text: "Terms ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "And ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: ThemeColor.thirdColor,
                          ),
                        ),
                        TextSpan(
                          text: "Conditions",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                  child: CustomeButtonWidget(title: "Place Order", onPressed: () {}),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
