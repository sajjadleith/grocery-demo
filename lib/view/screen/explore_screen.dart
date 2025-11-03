import 'package:flutter/material.dart';
import 'package:grocery_project/model/groceries_model.dart';

import '../../core/utility/widgets/custom_search_button_widget.dart';

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
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                itemCount: groceriesList.length,
                itemBuilder: (context, index) {
                  final product = groceriesList[index];
                  return InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {},
                    child: Ink(
                      width: 175,
                      height: 190,
                      padding: const EdgeInsetsGeometry.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: product.color.withValues(alpha: .5),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: product.color),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(product.image, width: 111, height: 75),
                          const SizedBox(height: 20),
                          Center(
                            child: Text(
                              "product.nameproduct.nameproduct.nameproduct.nameproduct.nameproduct.nameproduct.nameproduct.nameproduct.nameproduct.nameproduct.name",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
