import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_project/core/theme_color.dart';
import 'package:grocery_project/provider/navbar_provider.dart';
import 'package:provider/provider.dart';

class NavBarIconsWidget extends StatefulWidget {
  const NavBarIconsWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    required this.color,
    required this.index,
  });

  final void Function()? onTap;
  final String title;
  final String icon;
  final Color color;
  final int index;
  @override
  _NavBarIconsWidgetState createState() => _NavBarIconsWidgetState();
}

class _NavBarIconsWidgetState extends State<NavBarIconsWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: widget.onTap,
      child: Container(
        width: 60,
        height: 55,
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: Consumer<NavBarProvider>(
          builder: (context, navBarProvider, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 5,
              children: [
                SizedBox(height: 5),
                SvgPicture.asset(
                  widget.icon,
                  color: navBarProvider.currentIndex == widget.index ? ThemeColor.primaryColor : Colors.black,
                ),
                Expanded(
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      color: navBarProvider.currentIndex == widget.index ? ThemeColor.primaryColor : Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
