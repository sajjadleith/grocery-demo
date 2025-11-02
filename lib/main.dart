import 'package:flutter/material.dart';
import 'package:grocery_project/provider/navbar_provider.dart';
import 'package:grocery_project/view/screen/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider<NavBarProvider>(create: (context) => NavBarProvider())],
      child: MaterialApp(
        title: 'Grocery Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          fontFamily: "Cairo",
        ),

        // initialRoute: AppRoutes.splashPage,
        // onGenerateRoute: GeneratedRoute.generatedRoute,
        home: MainScreen(),
      ),
    );
  }
}
