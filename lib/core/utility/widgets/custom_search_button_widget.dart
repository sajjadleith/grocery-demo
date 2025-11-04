import 'package:flutter/material.dart';

import '../../theme_color.dart';

class CustomSearchButtonWidget extends StatefulWidget {
  CustomSearchButtonWidget({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<CustomSearchButtonWidget> createState() => _CustomSearchButtonWidgetState();
}

class _CustomSearchButtonWidgetState extends State<CustomSearchButtonWidget> {
  final FocusNode _focusNode = FocusNode();
  bool _showCleanIcon = false;

  @override
  void initState() {
    // TODO: implement initState
    widget.controller.addListener(() {
      _showCleanIcon = widget.controller.text.isNotEmpty;
      setState(() {});
    });
    super.initState();
    // Wait until the first frame is rendered, then request focus
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: ThemeColor.thirdColor),
          prefixIcon: const Icon(Icons.search),
          suffixIcon: _showCleanIcon
              ? IconButton(
                  onPressed: () {
                    widget.controller.clear();
                    _showCleanIcon = false;
                    setState(() {});
                  },
                  icon: Icon(Icons.clear, color: Colors.grey),
                )
              : null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
          filled: true,
          fillColor: const Color(0xffF2F3F2),
        ),
        controller: widget.controller,
        focusNode: _focusNode,
      ),
    );
  }
}
