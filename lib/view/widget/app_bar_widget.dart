import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xffbdb7b794), width: 1)),
      ),
      child: Text("Favourite", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
    );
  }
}
