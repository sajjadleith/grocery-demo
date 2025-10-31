import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_project/core/app_assets.dart';

class CustomAppBarWidget extends StatefulWidget {
  const CustomAppBarWidget({super.key});

  @override
  _CustomAppBarWidgetState createState() => _CustomAppBarWidgetState();
}

class _CustomAppBarWidgetState extends State<CustomAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFFDFCFB), // off white
            Color(0xFFF8EFFB), // pinkish
            Color(0xFFEFF7FA), // bluish
            Color(0xFFFDF8F5),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 0.4, 0.7, 1.0],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    alignment: Alignment.center,
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: SvgPicture.asset(
                      AppAssets.arrowBack,
                      colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                      width: 18,
                      height: 18,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
