import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_project/core/app_assets.dart';
import 'package:grocery_project/core/theme_color.dart';
import 'package:grocery_project/model/product_model.dart';

class CustomexpansionWidget extends StatefulWidget {
  CustomexpansionWidget({Key? key}) : super(key: key);

  @override
  _CustomexpansionWidgetState createState() => _CustomexpansionWidgetState();
}

class _CustomexpansionWidgetState extends State<CustomexpansionWidget> {
  bool _customIcon = false;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text("Product Detail", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
      trailing: _customIcon
          ? SvgPicture.asset(AppAssets.arrowDropDown)
          : SvgPicture.asset(AppAssets.arrowUp),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.zero,
      ),
      collapsedShape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.zero,
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            productList[0].desc!,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: ThemeColor.thirdColor,
            ),
          ),
        ),
      ],
      onExpansionChanged: (bool expanded) {
        _customIcon = expanded;
        setState(() {});
      },
    );
  }
}

class CustomExpansioinWidget2 extends StatefulWidget {
  CustomExpansioinWidget2({Key? key}) : super(key: key);

  @override
  _CustomExpansioinWidget2State createState() => _CustomExpansioinWidget2State();
}

class _CustomExpansioinWidget2State extends State<CustomExpansioinWidget2> {
  bool _customIcon = false;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text("Nutritions", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 5,
        children: [
          Container(
            width: 33,
            height: 18,
            alignment: Alignment.center,
            // margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: ThemeColor.borderColor,
            ),
            child: Text("100g", style: TextStyle(fontSize: 9, fontWeight: FontWeight.w600)),
          ),
          _customIcon
              ? SvgPicture.asset(AppAssets.arrowDropDown)
              : SvgPicture.asset(AppAssets.arrowUp),
        ],
      ),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.zero,
      ),
      collapsedShape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.zero,
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            productList[0].desc!,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: ThemeColor.thirdColor,
            ),
          ),
        ),
      ],
      onExpansionChanged: (bool expanded) {
        _customIcon = expanded;
        setState(() {});
      },
    );
  }
}

class CustomExpansionReviewWidget extends StatefulWidget {
  CustomExpansionReviewWidget({Key? key, required this.icon, required this.title})
    : super(key: key);
  final String icon;
  final String title;

  @override
  _CustomExpansionReviewWidgetState createState() => _CustomExpansionReviewWidgetState();
}

class _CustomExpansionReviewWidgetState extends State<CustomExpansionReviewWidget> {
  bool _customIcon = false;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        widget.title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: ThemeColor.thirdColor),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 5,
        children: [
          SvgPicture.asset(widget.icon),
          _customIcon
              ? SvgPicture.asset(AppAssets.arrowDropDown)
              : SvgPicture.asset(AppAssets.arrowUp),
        ],
      ),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.zero,
      ),
      collapsedShape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.zero,
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            productList[0].desc!,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: ThemeColor.thirdColor,
            ),
          ),
        ),
      ],
      onExpansionChanged: (bool expanded) {
        _customIcon = expanded;
        setState(() {});
      },
    );
  }
}

class CustomExpansionCheckout extends StatefulWidget {
  const CustomExpansionCheckout({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  _CustomExpansionCheckoutState createState() => _CustomExpansionCheckoutState();
}

class _CustomExpansionCheckoutState extends State<CustomExpansionCheckout> {
  bool _customIcon = false;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        widget.title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: ThemeColor.thirdColor),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 5,
        children: [
          Text(
            widget.subTitle,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          _customIcon
              ? SvgPicture.asset(AppAssets.arrowDropDown)
              : SvgPicture.asset(AppAssets.arrowUp),
        ],
      ),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.zero,
      ),
      collapsedShape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.zero,
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            productList[0].desc!,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: ThemeColor.thirdColor,
            ),
          ),
        ),
      ],
      onExpansionChanged: (bool expanded) {
        _customIcon = expanded;
        setState(() {});
      },
    );
  }
}
