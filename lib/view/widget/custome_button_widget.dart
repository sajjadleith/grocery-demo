import 'package:flutter/material.dart';
import 'package:grocery_project/core/theme_color.dart';

class CustomeButtonWidget extends StatefulWidget {
  const CustomeButtonWidget({super.key, required this.title, required this.onPressed});

  final String title;
  final VoidCallback onPressed;

  @override
  _CustomeButtonWidgetState createState() => _CustomeButtonWidgetState();
}

class _CustomeButtonWidgetState extends State<CustomeButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 67,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ThemeColor.primaryColor,
          foregroundColor: ThemeColor.secondaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 12),
        ),
        onPressed: widget.onPressed,
        child: Text(widget.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
      ),
    );
  }
}

class CutomeButtonWidgetWithRow extends StatefulWidget {
  const CutomeButtonWidgetWithRow({super.key, required this.onPressed, required this.title, required this.totalPrice});

  final VoidCallback onPressed;
  final String title;
  final double totalPrice;

  @override
  State<CutomeButtonWidgetWithRow> createState() => _CutomeButtonWidgetWithRowState();
}

class _CutomeButtonWidgetWithRowState extends State<CutomeButtonWidgetWithRow> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 67,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ThemeColor.primaryColor,
          foregroundColor: ThemeColor.secondaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
        ),
        onPressed: widget.onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            SizedBox(
              width: 60,
              height: 25,
              child: Container(
                decoration: BoxDecoration(color: const Color(0xff489E67), borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    "\$${widget.totalPrice.toString()}",
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
