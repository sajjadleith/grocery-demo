import 'package:flutter/material.dart';
import 'package:grocery_project/core/routes/app_routes.dart';
import 'package:grocery_project/core/theme_color.dart';

import '../../core/utility/widgets/custom_search_button_widget.dart';
import '../widget/categories_widget.dart';

class ExploreScreen extends StatefulWidget {
  ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Find Products", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: ThemeColor.thirdColor,
                    ),
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: const Color(0xffF2F3F2),
                  ),
                  readOnly: true,
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.searchProduct);
                  },
                ),
              ),
              SizedBox(height: 20),
              CategoriesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
