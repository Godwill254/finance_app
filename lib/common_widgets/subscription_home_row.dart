import "package:finance_app/common/color_extension.dart";
import "package:flutter/material.dart";

class SubscriptionHomeRow extends StatelessWidget {
  final Map sObj;
  final VoidCallback onPressed;
  

  const SubscriptionHomeRow(
      {super.key,
      required this.sObj,
      required this.onPressed,
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        decoration:  BoxDecoration(
                border: Border.all(
                  color: TColor.border.withOpacity(0.15),
                ),
                color: TColor.gray60.withOpacity(.2),
                borderRadius: BorderRadius.circular(20),
              )
            ,
        child: Row(
          children: [
            Expanded(
              child: Text(
                sObj["name"],
                style: TextStyle(
                  color:  TColor.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
