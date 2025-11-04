import 'package:flutter/material.dart';
import 'package:grocery_project/core/utility/widgets/custom_search_button_widget.dart';
import 'package:grocery_project/view/widget/product_item_widget.dart';

import '../../core/utility/widgets/filter_item_widget.dart';

class SearchProductScreen extends StatefulWidget {
  const SearchProductScreen({super.key});

  @override
  _SearchProductScreenState createState() => _SearchProductScreenState();
}

class _SearchProductScreenState extends State<SearchProductScreen> {
  TextEditingController searchController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Wait until the first frame is rendered, then request focus
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: CustomSearchButtonWidget(controller: searchController)),
                    FilterItemWidget(),
                  ],
                ),
              ),
              SizedBox(height: 5),
              ProductItemWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
