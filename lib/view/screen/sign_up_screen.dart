import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_project/core/app_assets.dart';
import 'package:grocery_project/core/routes/app_routes.dart';
import 'package:grocery_project/core/theme_color.dart';
import 'package:grocery_project/core/utility/validator.dart';
import 'package:grocery_project/view/screen/blurry_background.dart';
import 'package:grocery_project/view/widget/custom_textformfield_widget.dart';
import 'package:grocery_project/view/widget/custome_button_widget.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPassword = true;
  bool isEmailValid = false;
  bool isUsernameValid = false;
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
                    Text("Sing Up", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600)),
                    SizedBox(height: 5),
                    Text(
                      "Enter your credentials to continue",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: ThemeColor.thirdColor,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Username",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: ThemeColor.thirdColor,
                      ),
                    ),
                    CustomTextField2Widget(
                      controller: userController,
                      validator: Validator.usernameValidation,
                      title: "Enter Your Username",
                      suffixIcon: isUsernameValid
                          ? Icon(Icons.check, color: Colors.green)
                          : userController.text.isEmpty
                          ? SizedBox()
                          : Icon(Icons.clear, color: Colors.red),
                      onChanged: (value) {
                        final error = Validator.usernameValidation(value);
                        isUsernameValid = error == null;
                        setState(() {});
                      },
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
                      suffixIcon: isEmailValid
                          ? Icon(Icons.check, color: Colors.green)
                          : emailController.text.isEmpty
                          ? SizedBox()
                          : Icon(Icons.clear, color: Colors.red),
                      onChanged: (value) {
                        final error = Validator.validateEmail(value);
                        isEmailValid = error == null;
                        setState(() {});
                      },
                    ),
                    SizedBox(height: 20),
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
                    SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                        text: "By continuing you agree to our ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: ThemeColor.thirdColor,
                        ),
                        children: [
                          TextSpan(
                            text: "Terms of Service ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: ThemeColor.primaryColor,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, AppRoutes.signUpPage);
                              },
                          ),
                          TextSpan(
                            text: "and ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: ThemeColor.thirdColor,
                            ),
                          ),
                          TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
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
                    SizedBox(height: 30),
                    CustomeButtonWidget(
                      title: "Sign Up",
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
                          text: "Already have an account? ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: "SignIn",
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
