import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_project/core/app_assets.dart';
import 'package:grocery_project/core/routes/app_routes.dart';
import 'package:grocery_project/core/theme_color.dart';
import 'package:grocery_project/core/utility/validator.dart';
import 'package:grocery_project/view/widget/custom_appbar_widget.dart';
import 'package:grocery_project/view/widget/custom_textformfield_widget.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.blur), fit: BoxFit.cover),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Enter your 4-digit code",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Code",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: ThemeColor.thirdColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: CustomTextField2Widget(
                  controller: _codeController,
                  validator: Validator.validateOtp,
                  title: "- - - -",
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: ThemeColor.primaryColor,
                    content: Text(
                      "Resend the code to your phone",
                      style: TextStyle(color: ThemeColor.secondaryColor),
                    ),
                  ),
                );
              },
              child: Text(
                "Resend Code",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: ThemeColor.primaryColor,
                ),
              ),
            ),
            FloatingActionButton(
              shape: CircleBorder(),
              backgroundColor: ThemeColor.primaryColor,
              foregroundColor: ThemeColor.secondaryColor,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, AppRoutes.locationPage);
                }
              },
              child: SvgPicture.asset(AppAssets.arrowForward),
            ),
          ],
        ),
      ),
    );
  }
}
