import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_project/core/app_assets.dart';

class CustomDropDownWidget extends StatefulWidget {
  const CustomDropDownWidget({
    super.key,
    required this.lists,
    required this.title,
    required this.onChange,
    required this.validator,
  });
  final List<String> lists;
  final String title;
  final ValueChanged<String?>? onChange;
  final FormFieldValidator<String>? validator;

  @override
  _CustomDropDownWidgetState createState() => _CustomDropDownWidgetState();
}

class _CustomDropDownWidgetState extends State<CustomDropDownWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DropdownButtonFormField(
        hint: Text("Selecte a Zone"),
        items: widget.lists.map((list) {
          return DropdownMenuItem(value: list, child: Text(list));
        }).toList(),
        onChanged: widget.onChange,
        icon: SvgPicture.asset(AppAssets.arrowDown, fit: BoxFit.cover),
        iconSize: 10,
        validator: widget.validator,
      ),
    );
  }
}
