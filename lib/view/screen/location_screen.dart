import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_project/core/app_assets.dart';
import 'package:grocery_project/core/routes/app_routes.dart';
import 'package:grocery_project/core/theme_color.dart';
import 'package:grocery_project/core/utility/validator.dart';
import 'package:grocery_project/view/screen/blurry_background.dart';
import 'package:grocery_project/view/widget/custom_appbar_widget.dart';
import 'package:grocery_project/view/widget/custom_drop_down_widget.dart';
import 'package:grocery_project/view/widget/custome_button_widget.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({Key? key}) : super(key: key);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  final _formKey = GlobalKey<FormState>();
  String? selectedZone;
  String? selectedArea;
  final List<String> zones = ["Baghdad", "Basra", "Banasree", "Mosule"];
  final List<String> areas = ["Bayaa", "Al-Shorta", "Zayona", "Mansour"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            BlurryGradientBackground(),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 60),
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
                    Center(child: SvgPicture.asset(AppAssets.location)),
                    SizedBox(height: 30),
                    Center(
                      child: Text(
                        "Select Your Location",
                        style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      width: double.infinity,
                      height: 57,
                      child: Text(
                        textAlign: TextAlign.center,
                        "Swithch on your location to stay in tune with what’s happening in your area",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: ThemeColor.thirdColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 80),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Your Zone",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ThemeColor.thirdColor,
                        ),
                      ),
                    ),
                    CustomDropDownWidget(
                      lists: zones,
                      onChange: (value) {
                        selectedZone = value;
                        setState(() {});
                      },
                      title: "Select a Zone",
                      validator: Validator.validatorDropDownZone,
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Your Area",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ThemeColor.thirdColor,
                        ),
                      ),
                    ),
                    CustomDropDownWidget(
                      lists: areas,
                      onChange: (value) {
                        selectedArea = value;
                        setState(() {});
                      },
                      title: "Types of your area",
                      validator: Validator.validatorDropDownArea,
                    ),
                    SizedBox(height: 40),
                    CustomeButtonWidget(
                      title: "Submit",
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, AppRoutes.loginPage);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
