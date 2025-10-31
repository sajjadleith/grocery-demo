import 'package:flutter/material.dart';
import 'package:grocery_project/core/theme_color.dart';

class ErrorWidgetScreen extends StatefulWidget {
  ErrorWidgetScreen({Key? key}) : super(key: key);

  @override
  _ErrorWidgetScreenState createState() => _ErrorWidgetScreenState();
}

class _ErrorWidgetScreenState extends State<ErrorWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          "404 Page not found",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: ThemeColor.secondaryColor,
          ),
        ),
      ),
    );
  }
}
