import 'package:flutter/material.dart';
import 'package:grocery_project/core/app_assets.dart';

class CustomTextformfieldWidget extends StatelessWidget {
  const CustomTextformfieldWidget({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        readOnly: true,
        decoration: InputDecoration(
          isDense: true,
          label: Text("Write Phone Number"),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(AppAssets.flag, width: 24, height: 24),
                const SizedBox(width: 6),
                const Text('+880', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
        ),
        keyboardType: TextInputType.phone,
        onTap: onTap,
      ),
    );
  }
}

class CustomTextFormFieldWidget2 extends StatelessWidget {
  const CustomTextFormFieldWidget2({
    super.key,
    required this.controller,
    required this.validator,
    this.focusNode,
  });

  final TextEditingController controller;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        controller: controller,
        validator: validator,
        focusNode: focusNode,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          isDense: true,
          labelText: "Write Phone Number",
          prefix: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(AppAssets.flag, width: 24, height: 24),
              const SizedBox(width: 6),
              const Text('+880', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(width: 8),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField2Widget extends StatefulWidget {
  CustomTextField2Widget({
    super.key,
    required this.controller,
    required this.title,
    required this.validator,
    this.isPassword = false,
    this.suffixIcon,
    this.onChanged,
  });
  final String title;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  bool isPassword;
  final Widget? suffixIcon;
  void Function(String)? onChanged;

  @override
  _CustomTextField2WidgetState createState() => _CustomTextField2WidgetState();
}

class _CustomTextField2WidgetState extends State<CustomTextField2Widget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hint: Text(widget.title), suffixIcon: widget.suffixIcon),
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.isPassword,
      onChanged: widget.onChanged,
    );
  }
}
