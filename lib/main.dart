import 'package:flutter/material.dart';
import 'package:grocery_project/core/routes/app_routes.dart';
import 'package:grocery_project/core/routes/ongenerated_route.dart';
import 'package:grocery_project/view/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: "Cairo",
      ),
      initialRoute: AppRoutes.splashPage,
      onGenerateRoute: GeneratedRoute.generatedRoute,
      // home: SplashScreen(),
    );
  }
}
