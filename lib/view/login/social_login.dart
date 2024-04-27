import "package:finance_app/common/color_extension.dart";

import "package:finance_app/common_widgets/secondary_button.dart";
import "package:flutter/material.dart";

class SocialLoginView extends StatefulWidget {
  const SocialLoginView({super.key});

  @override
  State<SocialLoginView> createState() => _SocialLoginView();
}

class _SocialLoginView extends State<SocialLoginView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/app_logo.png",
                width: media.width * 0.5,
                fit: BoxFit.contain,
              ),
              const Spacer(),
              const SizedBox(
                height: 30,
              ),
              SecondaryButton(
                title: "Sign In",
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Track your finances effortlessly with Trackizer, \nthe all-in-one solution for managing your money.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
