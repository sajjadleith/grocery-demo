import 'package:flutter/material.dart';
import 'package:grocery_project/core/app_assets.dart';
import 'package:grocery_project/provider/navbar_provider.dart';
import 'package:grocery_project/view/widget/nav_bar_icons_widget.dart';
import 'package:provider/provider.dart';

class NavBarWidget extends StatefulWidget {
  NavBarWidget({Key? key}) : super(key: key);

  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 414,
      height: 92,
      decoration: BoxDecoration(
        // color: Colors.red,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        border: BoxBorder.all(color: Colors.grey, width: 0.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NavBarIconsWidget(
            title: "Shop",
            icon: AppAssets.shop,
            onTap: () {
              Provider.of<NavBarProvider>(context, listen: false).changeCurrentNavScreen(0);
            },
            color: Colors.black,
            index: 0,
          ),
          NavBarIconsWidget(
            title: "Explore",
            icon: AppAssets.explore,
            onTap: () {
              Provider.of<NavBarProvider>(context, listen: false).changeCurrentNavScreen(1);
            },
            color: Colors.black,
            index: 1,
          ),
          NavBarIconsWidget(
            title: "Cart",
            icon: AppAssets.cart,
            onTap: () {
              Provider.of<NavBarProvider>(context, listen: false).changeCurrentNavScreen(2);
            },
            color: Colors.black,
            index: 2,
          ),
          NavBarIconsWidget(
            title: "Favourite",
            icon: AppAssets.favourite,
            onTap: () {
              Provider.of<NavBarProvider>(context, listen: false).changeCurrentNavScreen(3);
            },
            color: Colors.black,
            index: 3,
          ),
          NavBarIconsWidget(
            title: "Account",
            icon: AppAssets.account,
            onTap: () {
              Provider.of<NavBarProvider>(context, listen: false).changeCurrentNavScreen(4);
            },
            color: Colors.black,
            index: 4,
          ),
        ],
      ),
    );
  }
}
