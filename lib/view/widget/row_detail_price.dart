import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_project/core/app_assets.dart';
import 'package:grocery_project/core/theme_color.dart';
import 'package:grocery_project/model/product_model.dart';
import 'package:grocery_project/provider/product_provider.dart';
import 'package:provider/provider.dart';

class RowDetailPrice extends StatefulWidget {
  RowDetailPrice({Key? key}) : super(key: key);

  @override
  _RowDetailPriceState createState() => _RowDetailPriceState();
}

class _RowDetailPriceState extends State<RowDetailPrice> {
  @override
  Widget build(BuildContext context) {
    final productList = Provider.of<ProductProvider>(context).productList;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 120,
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {},
                  child: Ink(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Center(child: SvgPicture.asset(AppAssets.decrease)),
                  ),
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    border: Border.all(color: ThemeColor.borderColor, width: 1),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "1",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {},
                  child: Ink(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: SvgPicture.asset(
                        AppAssets.increase,
                        colorFilter: ColorFilter.mode(ThemeColor.primaryColor, BlendMode.srcIn),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            "\$${productList[0].price.toString()}",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
