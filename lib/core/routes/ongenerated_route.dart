import 'package:flutter/material.dart';
import 'package:grocery_project/core/routes/app_routes.dart';
import 'package:grocery_project/core/routes/error_widget_screen.dart';
import 'package:grocery_project/view/screen/location_screen.dart';
import 'package:grocery_project/view/screen/login_screen.dart';
import 'package:grocery_project/view/screen/main_screen.dart';
import 'package:grocery_project/view/screen/number_screen.dart';
import 'package:grocery_project/view/screen/onboarding_screen.dart';
import 'package:grocery_project/view/screen/order_accepted_screen.dart';
import 'package:grocery_project/view/screen/search_product_screen.dart';
import 'package:grocery_project/view/screen/sign_up_screen.dart';
import 'package:grocery_project/view/screen/signin_screen.dart';
import 'package:grocery_project/view/screen/splash_screen.dart';
import 'package:grocery_project/view/screen/verification_screen.dart';

import '../../view/screen/product_details_screen.dart';
import '../../view/screen/product_screen.dart';

class GeneratedRoute {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    final args = settings.arguments as Map?;
    switch (settings.name) {
      case AppRoutes.splashPage:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case AppRoutes.onboardingPage:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case AppRoutes.signInPage:
        return MaterialPageRoute(builder: (_) => SignInScreen());
      case AppRoutes.numberPage:
        return MaterialPageRoute(builder: (_) => NumberScreen());
      case AppRoutes.verificationPage:
        return MaterialPageRoute(builder: (_) => VerificationScreen());
      case AppRoutes.locationPage:
        return MaterialPageRoute(builder: (_) => LocationScreen());
      case AppRoutes.loginPage:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case AppRoutes.signUpPage:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case AppRoutes.mainPage:
        return MaterialPageRoute(builder: (_) => MainScreen());
      case AppRoutes.productPage:
        return MaterialPageRoute(builder: (_) => ProductScreen());
      case AppRoutes.searchProduct:
        return MaterialPageRoute(builder: (_) => SearchProductScreen());
      case AppRoutes.detailsPage:
        return MaterialPageRoute(builder: (_) => ProductDetailsScreen());
      case AppRoutes.orderPage:
        return MaterialPageRoute(builder: (_) => OrderAcceptedScreen());
      default:
        return MaterialPageRoute(builder: (_) => ErrorWidgetScreen());
    }
  }
}
