// ignore_for_file: prefer_const_constructors

import 'package:finance_app/common/color_extension.dart';
import 'package:flutter/material.dart';

class RoundTextField extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  final TextInputType? keyboardtype;
  final bool obscureText;

  const RoundTextField({
    super.key,
    required this.title,
    required this.controller,
    required this.keyboardtype,
     this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: TColor.gray50,
            fontSize: 12,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 48,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: TColor.gray60.withOpacity(0.05),
            border: Border.all(color: TColor.gray70),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
            keyboardType: keyboardtype,
            obscureText: obscureText,
          ),
        ),
      ],
    );
  }
}
