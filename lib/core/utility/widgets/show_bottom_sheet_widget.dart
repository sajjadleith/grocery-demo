import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_project/core/app_assets.dart';
import 'package:grocery_project/model/band_model.dart';
import 'package:grocery_project/model/category_model.dart';
import 'package:grocery_project/provider/product_provider.dart';
import 'package:grocery_project/view/widget/custome_button_widget.dart';
import 'package:provider/provider.dart';

import '../../theme_color.dart';

class XWidget extends StatefulWidget {
  const XWidget({super.key});

  @override
  State<XWidget> createState() => _XWidgetState();
}

class _XWidgetState extends State<XWidget> {
  final Map<String, bool> selectedCategories = {};
  final Map<String, bool> selectedBands = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F3F2),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          // padding: const EdgeInsets.only(bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 16, right: 16, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(30),
                      onTap: () => Navigator.pop(context),
                      child: SvgPicture.asset(AppAssets.cancel, width: 30, height: 30, colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn)),
                    ),
                    const Text("Filter", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                    const SizedBox(width: 30),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ThemeColor.borderColor,
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Categories", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                    const SizedBox(height: 20),

                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        final title = categories[index];
                        final prov = context.watch<ProductProvider>();
                        final isChecked = prov.selectedCategories[title] ?? false;
                        return _buildCheck(title, isChecked, (val) {
                          prov.toggleCategory(title, val ?? false);
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    const Text("Brand", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                    const SizedBox(height: 20),

                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: bands.length,
                      itemBuilder: (context, index) {
                        final title = bands[index];
                        final prov = context.watch<ProductProvider>();
                        final isChecked = prov.selectedBrands[title] ?? false;
                        return _buildCheck(title, isChecked, (val) {
                          prov.toggleBrand(title, val ?? false);
                        });
                      },
                    ),

                    const SizedBox(height: 40),
                    CustomeButtonWidget(
                      title: "Apply Filter",
                      onPressed: () {
                        context.read<ProductProvider>().applyFilter();
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(height: 10),
                    CustomeButtonWidget(
                      title: "Clear Filter",
                      onPressed: () {
                        context.read<ProductProvider>().clearFilter();
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildCheck(String title, bool checked, void Function(bool?)? onChanged) {
  return Row(
    children: [
      Checkbox(
        value: checked,
        onChanged: onChanged,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        fillColor: WidgetStatePropertyAll(checked ? ThemeColor.primaryColor : Colors.white),
      ),
      Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: checked ? ThemeColor.primaryColor : Colors.black),
      ),
    ],
  );
}
