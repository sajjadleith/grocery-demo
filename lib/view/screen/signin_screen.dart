import 'package:flutter/material.dart';
import 'package:grocery_project/core/app_assets.dart';
import 'package:grocery_project/core/routes/app_routes.dart';
import 'package:grocery_project/core/theme_color.dart';
import 'package:grocery_project/view/screen/blurry_background.dart';
import 'package:grocery_project/view/widget/custom_textformfield_widget.dart';
import 'package:grocery_project/view/widget/custome_button_media_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: ThemeColor.secondaryColor,
      body: Stack(
        children: [
          BlurryGradientBackground(),
          Expanded(
            child: SingleChildScrollView(
              child: OrientationBuilder(
                builder: (context, orientation) {
                  final bool isPortrait = orientation == Orientation.portrait;
                  final double topOffset = isPortrait ? -size.height * 0.20 : -size.height * 0.10;
                  final double rightOffset = isPortrait ? -size.width * 0.10 : -size.width * 0.45;
                  final double widthFactor = isPortrait ? 0.90 : 1.2;
                  final double heightFactor = isPortrait ? 0.80 : 1.0;

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: size.width,
                            height: size.height * (isPortrait ? 0.48 : 0.7),
                          ),
                          Positioned(
                            top: topOffset,
                            right: rightOffset,
                            child: Transform.rotate(
                              angle: 3.8,
                              child: Container(
                                width: size.width * widthFactor,
                                height: size.height * heightFactor,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(AppAssets.singInImage),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 22),
                        width: 250,
                        child: Text(
                          "Get your groceries with nectar",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 22),
                        child: CustomTextformfieldWidget(
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.numberPage, arguments: null);
                          },
                        ),
                      ),
                      SizedBox(height: 40),
                      Center(
                        child: Text(
                          "Or connect with social media",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff828282),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: CustomeButtonMediaWidget(
                          onPressed: () {},
                          title: "Continue with Google",
                          icon: AppAssets.google,
                          color: Color(0xff5383EC),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: CustomeButtonMediaWidget(
                          onPressed: () {},
                          title: "Continue with Google",
                          icon: AppAssets.facebook,
                          color: Color(0xff4A66AC),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
