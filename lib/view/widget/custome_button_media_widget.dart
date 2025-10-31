import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_project/core/theme_color.dart';

class CustomeButtonMediaWidget extends StatefulWidget {
  CustomeButtonMediaWidget({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.title,
    required this.color,
  }) : super(key: key);
  final VoidCallback onPressed;
  final String icon;
  final String title;
  final Color color;

  @override
  _CustomeButtonMediaWidgetState createState() => _CustomeButtonMediaWidgetState();
}

class _CustomeButtonMediaWidgetState extends State<CustomeButtonMediaWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 67,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(18)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(widget.icon),
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: ThemeColor.secondaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
