import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_project/core/theme_color.dart';

class CustomButtonSmall extends StatefulWidget {
  const CustomButtonSmall({super.key, required this.icon, required this.onTap, required this.color});
  final String icon;
  final VoidCallback onTap;
  final Color color;

  @override
  State<CustomButtonSmall> createState() => _CustomButtonSmallState();
}

class _CustomButtonSmallState extends State<CustomButtonSmall> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(17),
      onTap: widget.onTap,
      child: Ink(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Colors.white,
          border: Border.all(color: ThemeColor.borderColor, width: 1),
        ),
        child: Center(child: SvgPicture.asset(widget.icon, width: 17, height: 17, color: widget.color)),
      ),
    );
  }
}
