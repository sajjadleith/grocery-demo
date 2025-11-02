import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_project/core/routes/app_routes.dart';

import '../../core/app_assets.dart';
import '../../core/theme_color.dart';
import '../widget/account_widget.dart';

class AccoundScreen extends StatefulWidget {
  AccoundScreen({Key? key}) : super(key: key);

  @override
  _AccoundScreenState createState() => _AccoundScreenState();
}

class _AccoundScreenState extends State<AccoundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 63,
                      height: 63,
                      child: CachedNetworkImage(
                        imageUrl: AppAssets.userImage,
                        imageBuilder: (context, imageProvider) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(27),
                              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                            ),
                          );
                        },
                        placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Afsar Hossen", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                            SizedBox(width: 10),
                            InkWell(
                              borderRadius: BorderRadius.circular(50),
                              onTap: () {},
                              child: SizedBox(
                                width: 25,
                                height: 25,
                                child: Center(
                                  child: SvgPicture.asset(
                                    AppAssets.edit,
                                    color: ThemeColor.primaryColor,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Imshuvo97@gmail.com",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: ThemeColor.thirdColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),
              Divider(thickness: 1, color: Colors.grey[400]),
              SizedBox(height: 20),
              AccountWidget(onTap: () {}, title: 'Order', icon: AppAssets.order),
              SizedBox(height: 20),
              Divider(thickness: 1, color: Colors.grey[400]),
              SizedBox(height: 20),
              AccountWidget(onTap: () {}, title: 'My Details', icon: AppAssets.details),
              SizedBox(height: 20),
              Divider(thickness: 1, color: Colors.grey[400]),
              SizedBox(height: 20),
              AccountWidget(onTap: () {}, title: 'Delivery Address', icon: AppAssets.address),
              SizedBox(height: 20),
              Divider(thickness: 1, color: Colors.grey[400]),
              SizedBox(height: 20),
              AccountWidget(onTap: () {}, title: 'Payment Methods', icon: AppAssets.payment),
              SizedBox(height: 20),
              Divider(thickness: 1, color: Colors.grey[400]),
              SizedBox(height: 20),
              AccountWidget(onTap: () {}, title: 'Promo Cord', icon: AppAssets.promo),
              SizedBox(height: 20),
              Divider(thickness: 1, color: Colors.grey[400]),
              SizedBox(height: 20),
              AccountWidget(onTap: () {}, title: 'Notification', icon: AppAssets.notification),
              SizedBox(height: 20),
              Divider(thickness: 1, color: Colors.grey[400]),
              SizedBox(height: 20),
              AccountWidget(onTap: () {}, title: 'Help', icon: AppAssets.help),
              SizedBox(height: 20),
              Divider(thickness: 1, color: Colors.grey[400]),
              SizedBox(height: 20),
              AccountWidget(onTap: () {}, title: 'About', icon: AppAssets.about),
              SizedBox(height: 20),
              Divider(thickness: 1, color: Colors.grey[400]),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(context, AppRoutes.loginPage, (Route<dynamic> route) => false);
                  },
                  borderRadius: BorderRadius.circular(19),
                  child: Ink(
                    width: double.infinity,
                    height: 67,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(19), color: Color(0xffF2F3F2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset(AppAssets.out),
                        Text(
                          "Log Out",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: ThemeColor.primaryColor),
                        ),
                        SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
