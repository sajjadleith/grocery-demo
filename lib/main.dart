import 'package:flutter/material.dart';
import 'package:grocery_project/provider/cart_provider.dart';
import 'package:grocery_project/provider/dummy_provider.dart';
import 'package:grocery_project/provider/fav_provider.dart';
import 'package:grocery_project/provider/navbar_provider.dart';
import 'package:grocery_project/provider/product_provider.dart';
import 'package:provider/provider.dart';

import 'core/routes/app_routes.dart';
import 'core/routes/ongenerated_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NavBarProvider>(create: (context) => NavBarProvider()),
        ChangeNotifierProvider<DummyProvider>(create: (context) => DummyProvider()),
        ChangeNotifierProvider<ProductProvider>(create: (context) => ProductProvider()),
        ChangeNotifierProvider<FavProvider>(create: (context) => FavProvider()),
        ChangeNotifierProvider<CartProvider>(create: (context) => CartProvider()),
      ],
      child: MaterialApp(
        title: 'Grocery Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          fontFamily: "Cairo",
        ),

        initialRoute: AppRoutes.splashPage,
        onGenerateRoute: GeneratedRoute.generatedRoute,
        // home: DumdumScreen(),
      ),
    );
  }
}
