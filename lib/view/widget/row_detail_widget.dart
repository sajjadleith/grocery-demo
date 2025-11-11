import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_project/core/app_assets.dart';
import 'package:grocery_project/model/product_model.dart';
import 'package:grocery_project/provider/product_provider.dart' show ProductProvider;
import 'package:provider/provider.dart' show Provider;

class RowDetailWidget extends StatefulWidget {
  RowDetailWidget({Key? key}) : super(key: key);

  @override
  _RowDetailWidgetState createState() => _RowDetailWidgetState();
}

class _RowDetailWidgetState extends State<RowDetailWidget> {
  @override
  Widget build(BuildContext context) {
    final productList = Provider.of<ProductProvider>(context).productList;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productList[0].name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                productList[0].pcs,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          SvgPicture.asset(AppAssets.favourite),
        ],
      ),
    );
  }
}
