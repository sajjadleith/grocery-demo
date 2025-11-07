import 'package:flutter/material.dart';

class CustomdividerWidget extends StatelessWidget {
  const CustomdividerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: SizedBox(
        width: double.infinity,
        child: Divider(color: Colors.grey[300], thickness: 1),
      ),
    );
  }
}
