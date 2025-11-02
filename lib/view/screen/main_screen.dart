import 'package:flutter/material.dart';
import 'package:grocery_project/provider/navbar_provider.dart';
import 'package:grocery_project/view/widget/nav_bar_widget.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<NavBarProvider>(
          builder: (context, navBar, child) {
            return navBar.screens[navBar.currentIndex];
          },
        ),
      ),
      bottomNavigationBar: NavBarWidget(),
    );
  }
}
