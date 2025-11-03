import 'package:flutter/material.dart';

import '../../theme_color.dart';

class CustomSearchButtonWidget extends StatelessWidget {
  const CustomSearchButtonWidget({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: ThemeColor.thirdColor),
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
          filled: true,
          fillColor: const Color(0xffF2F3F2),
        ),
        controller: controller,
      ),
    );
  }
}
