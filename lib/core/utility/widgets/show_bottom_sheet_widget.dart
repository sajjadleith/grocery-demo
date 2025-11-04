import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_project/core/app_assets.dart';
import 'package:grocery_project/view/widget/custome_button_widget.dart';
import '../../theme_color.dart';

class ShowBottomSheetWidget {
  static void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: const Color(0xffF2F3F2),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.95,
          minChildSize: 0.5,
          maxChildSize: 0.95,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () => Navigator.pop(context),
                          child: SvgPicture.asset(
                            AppAssets.cancel,
                            width: 30,
                            height: 30,
                            colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                          ),
                        ),
                        const Text(
                          "Filter",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(width: 30),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ThemeColor.borderColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Categories",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 30),

                        _buildCheck("Eggs", true),
                        _buildCheck("Noodles & Pasta", false),
                        _buildCheck("Chips & Crisps", false),
                        _buildCheck("Fast Food", false),

                        const SizedBox(height: 30),
                        const Text(
                          "Brand",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 30),

                        _buildCheck("Individual Collection", false),
                        _buildCheck("Cocola", true),
                        _buildCheck("Ifad", false),
                        _buildCheck("Kazi Farmas", false),

                        const SizedBox(height: 50),
                        CustomeButtonWidget(title: "Apply Filter", onPressed: () {}),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  static Widget _buildCheck(String title, bool checked) {
    return Row(
      children: [
        Checkbox(
          value: checked,
          onChanged: (val) {},
          fillColor: WidgetStatePropertyAll(checked ? ThemeColor.primaryColor : Colors.white),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: checked ? ThemeColor.primaryColor : Colors.black,
          ),
        ),
      ],
    );
  }
}
