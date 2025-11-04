import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_project/core/utility/widgets/show_bottom_sheet_widget.dart';

import '../../app_assets.dart';

class FilterItemWidget extends StatefulWidget {
  const FilterItemWidget({super.key});

  @override
  State<FilterItemWidget> createState() => _FilterItemWidgetState();
}

class _FilterItemWidgetState extends State<FilterItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          ShowBottomSheetWidget.showBottomSheet(context);
        },
        borderRadius: BorderRadius.circular(20),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 15),
          width: 36,
          height: 36,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: SvgPicture.asset(
            AppAssets.filter,
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            width: 18,
            height: 18,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
