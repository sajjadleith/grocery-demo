import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_project/core/app_assets.dart';

import '../../core/utility/widgets/best_sales_widget.dart';
import '../../core/utility/widgets/custom_search_button_widget.dart';
import '../widget/exclusive_offer_widget.dart';
import '../widget/groceries_card_item_widget.dart';
import '../widget/groceries_widget.dart';
import '../widget/header_widget.dart';
import '../widget/slider_widget.dart';

class ShopScreen extends StatefulWidget {
  ShopScreen({Key? key}) : super(key: key);

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 22),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(child: SvgPicture.asset(AppAssets.carrotLogo, width: 30)),
                    const SizedBox(height: 5),
                    const Text(
                      "Dhaka, Banassre",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),

              SliverToBoxAdapter(child: CustomSearchButtonWidget(controller: searchController)),

              const SliverToBoxAdapter(child: SliderWidget()),
              SliverToBoxAdapter(child: SizedBox(height: 30)),
              SliverToBoxAdapter(
                child: HeaderWidget(title: "Exclusive Offer", onTap: () {}),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverToBoxAdapter(child: ExclusiveOfferWidget()),
              SliverToBoxAdapter(child: SizedBox(height: 20)),

              SliverToBoxAdapter(
                child: HeaderWidget(title: "Best Sales", onTap: () {}),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverToBoxAdapter(child: BestSalesWidget()),
              SliverToBoxAdapter(child: SizedBox(height: 20)),

              SliverToBoxAdapter(
                child: HeaderWidget(title: "Groceries", onTap: () {}),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverToBoxAdapter(child: GroceriesCardItemWidget()),
              SliverToBoxAdapter(child: SizedBox(height: 10)),
              SliverToBoxAdapter(child: GroceriesWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
