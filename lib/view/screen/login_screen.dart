import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_project/core/app_assets.dart';
import 'package:grocery_project/core/routes/app_routes.dart';
import 'package:grocery_project/core/theme_color.dart';
import 'package:grocery_project/core/utility/validator.dart';
import 'package:grocery_project/view/screen/blurry_background.dart';
import 'package:grocery_project/view/screen/sign_up_screen.dart';
import 'package:grocery_project/view/widget/custom_appbar_widget.dart';
import 'package:grocery_project/view/widget/custom_textformfield_widget.dart';
import 'package:grocery_project/view/widget/custome_button_widget.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            BlurryGradientBackground(),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 33, vertical: 100),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SvgPicture.asset(
                        AppAssets.carrotLogo,
                        height: (orientation != Orientation.portrait)
                            ? MediaQuery.of(context).size.width / 8
                            : MediaQuery.of(context).size.height / 8,
                      ),
                    ),
                    SizedBox(height: 50),
                    Text("Loging", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600)),
                    SizedBox(height: 5),
                    Text(
                      "Enter your emails and password",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: ThemeColor.thirdColor,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: ThemeColor.thirdColor,
                      ),
                    ),
                    CustomTextField2Widget(
                      controller: emailController,
                      validator: Validator.validateEmail,
                      title: "Enter Your Email",
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: ThemeColor.thirdColor,
                      ),
                    ),
                    CustomTextField2Widget(
                      controller: passwordController,
                      isPassword: isPassword,
                      validator: Validator.validatePassword,
                      title: "Enter Your Password",
                      suffixIcon: IconButton(
                        icon: Icon(
                          (isPassword == false) ? Icons.remove_red_eye : Icons.visibility_off,
                        ),
                        onPressed: () {
                          isPassword = !isPassword;
                          setState(() {});
                        },
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.centerRight,
                      child: Text("Forgot Password?"),
                    ),
                    SizedBox(height: 30),
                    CustomeButtonWidget(
                      title: "Log In",
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, AppRoutes.mainPage);
                        }
                      },
                    ),
                    SizedBox(height: 25),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: "Don’t have an account? ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: "Singup",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: ThemeColor.primaryColor,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(context, AppRoutes.signUpPage);
                                },
                            ),
                          ],
                        ),
                      ),
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
