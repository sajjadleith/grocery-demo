import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/app_assets.dart';

class AccountWidget extends StatefulWidget {
  const AccountWidget({super.key, required this.onTap, required this.title, required this.icon});
  final void Function()? onTap;
  final String icon;
  final String title;
  @override
  State<AccountWidget> createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(widget.icon),
                SizedBox(width: 10),
                Text(widget.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              ],
            ),
            SvgPicture.asset(AppAssets.arrowForward, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
