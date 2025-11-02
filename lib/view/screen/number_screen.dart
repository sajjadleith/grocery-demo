import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_project/core/app_assets.dart';
import 'package:grocery_project/core/routes/app_routes.dart';
import 'package:grocery_project/core/theme_color.dart';
import 'package:grocery_project/core/utility/validator.dart';
import 'package:grocery_project/view/screen/blurry_background.dart';
import 'package:grocery_project/view/widget/custom_appbar_widget.dart';
import 'package:grocery_project/view/widget/custom_textformfield_widget.dart';

class NumberScreen extends StatefulWidget {
  NumberScreen({Key? key}) : super(key: key);

  @override
  _NumberScreenState createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Wait until the first frame is rendered, then request focus
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BlurryGradientBackground(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
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
                      "Enter your mobile number",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Mobile Number",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: ThemeColor.thirdColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: CustomTextFormFieldWidget2(
                      controller: _phoneController,
                      validator: Validator.phoneValidation,
                      focusNode: _focusNode,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: ThemeColor.primaryColor,
        foregroundColor: ThemeColor.secondaryColor,
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            Navigator.pushNamed(context, AppRoutes.verificationPage);
          }
        },
        child: SvgPicture.asset(AppAssets.arrowForward),
      ),
    );
  }
}
