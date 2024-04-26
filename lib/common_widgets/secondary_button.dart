import "package:finance_app/common/color_extension.dart";
import "package:flutter/material.dart";

class SecondaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double fontSize;
  final FontWeight fontWeight;

  const SecondaryButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/images/secondary_btn.png"),
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            color: TColor.white,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
