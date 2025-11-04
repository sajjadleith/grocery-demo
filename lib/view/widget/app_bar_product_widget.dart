import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/app_assets.dart';
import '../../core/utility/widgets/filter_item_widget.dart';

class AppBarProductWidget extends StatelessWidget {
  const AppBarProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            borderRadius: BorderRadius.circular(20),
            child: Container(
              alignment: Alignment.center,
              width: 36,
              height: 36,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: SvgPicture.asset(
                AppAssets.arrowBack,
                colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                width: 18,
                height: 18,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
        Text("Beverages", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
        FilterItemWidget(),
      ],
    );
  }
}
