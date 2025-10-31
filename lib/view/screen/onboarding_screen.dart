import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_project/core/app_assets.dart';
import 'package:grocery_project/core/routes/app_routes.dart';
import 'package:grocery_project/core/theme_color.dart';
import 'package:grocery_project/view/widget/custome_button_widget.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 22, right: 22, bottom: 50),
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.onbording),
            fit: BoxFit.cover,
            alignment: Alignment(0.2, 0.2),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.logo),
            SizedBox(height: 7),
            SizedBox(
              width: 278,
              child: Text(
                "Welcome to our store",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  color: ThemeColor.secondaryColor,
                ),
              ),
            ),
            Text(
              "Ger your groceries in as fast as one hour",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0x70FCFCFC)),
            ),
            SizedBox(height: 40),
            CustomeButtonWidget(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.signInPage);
              },
              title: "Get Started",
            ),
          ],
        ),
      ),
    );
  }
}
