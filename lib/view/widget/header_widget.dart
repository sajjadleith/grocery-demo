import 'package:flutter/material.dart';

import '../../core/theme_color.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, required this.title, required this.onTap});
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
        TextButton(
          onPressed: onTap,
          child: Text(
            "See all",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: ThemeColor.primaryColor),
          ),
        ),
      ],
    );
  }
}
