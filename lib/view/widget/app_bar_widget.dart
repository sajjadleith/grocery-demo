import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 100,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xffbdb7b794), width: 1)),
      ),
      child: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
    );
  }
}
