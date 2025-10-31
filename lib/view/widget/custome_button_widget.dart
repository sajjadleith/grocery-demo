import 'package:flutter/material.dart';
import 'package:grocery_project/core/theme_color.dart';

class CustomeButtonWidget extends StatefulWidget {
  const CustomeButtonWidget({super.key, required this.title, required this.onPressed});

  final String title;
  final VoidCallback onPressed;

  @override
  _CustomeButtonWidgetState createState() => _CustomeButtonWidgetState();
}

class _CustomeButtonWidgetState extends State<CustomeButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 67,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ThemeColor.primaryColor,
          foregroundColor: ThemeColor.secondaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 12),
        ),
        onPressed: widget.onPressed,
        child: Text(widget.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
      ),
    );
  }
}
