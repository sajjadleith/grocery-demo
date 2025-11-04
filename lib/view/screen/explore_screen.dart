import 'package:flutter/material.dart';

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
              CustomSearchButtonWidget(controller: searchController),
              SizedBox(height: 20),
              CategoriesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
