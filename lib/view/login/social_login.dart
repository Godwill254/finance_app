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
      backgroundColor: TColor.gray80,
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
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/apple_btn.png"),
                    ),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.35),
                        blurRadius: 5,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/apple.png",
                          width: 20, height: 20, color: TColor.white),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Sign up with appleID",
                        style: TextStyle(
                          color: TColor.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/google_btn.png"),
                    ),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.35),
                        blurRadius: 5,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/google.png",
                          width: 20, height: 20, color: TColor.gray),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Sign up with google",
                        style: TextStyle(
                          color: TColor.gray,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Facebook Sign Up button
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/fb_btn.png"),
                    ),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.35),
                        blurRadius: 5,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/fb.png",
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Sign up with facebook",
                        style: TextStyle(
                          color: TColor.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "or",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.white,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SecondaryButton(
                title: "Sign In",
                onPressed: () {},
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "By registering you consent \nto our terms and conditions",
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
