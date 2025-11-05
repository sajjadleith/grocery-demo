import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/app_assets.dart';
import '../../core/theme_color.dart';
import '../../core/utility/widgets/custom_button_small.dart';

class CardCartWidget extends StatefulWidget {
  const CardCartWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    required this.price,
  });
  final String imageUrl;
  final String title;
  final String subTitle;
  final double price;
  @override
  State<CardCartWidget> createState() => _CardCartWidgetState();
}

class _CardCartWidgetState extends State<CardCartWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 200,
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CachedNetworkImage(
            imageUrl: widget.imageUrl,
            placeholder: (context, url) {
              return Center(child: CircularProgressIndicator());
            },
            imageBuilder: (context, imageProvider) {
              return Container(
                width: 70,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(image: imageProvider),
                ),
              );
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(widget.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              Text(widget.subTitle, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
              SizedBox(height: 13),
              Row(
                children: [
                  CustomButtonSmall(icon: AppAssets.decrease, onTap: () {}, color: Colors.grey),
                  SizedBox(width: 10),
                  SizedBox(
                    width: 30,
                    child: Text(
                      textAlign: TextAlign.center,
                      "12",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  SizedBox(width: 10),
                  CustomButtonSmall(icon: AppAssets.increase, onTap: () {}, color: ThemeColor.primaryColor),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {},
                child: SvgPicture.asset(AppAssets.cancel, color: ThemeColor.thirdColor, width: 20, height: 20),
              ),
              SizedBox(height: 50),
              SizedBox(
                width: 60,
                child: Text(
                  "\$${widget.price.toString()}",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
