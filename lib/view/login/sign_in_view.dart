// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_element

import "package:finance_app/common/color_extension.dart";
import "package:finance_app/common_widgets/primary_button.dart";
import "package:finance_app/common_widgets/round_textfield.dart";
import "package:finance_app/common_widgets/secondary_button.dart";
import "package:finance_app/view/login/sign_up_view.dart";
import "package:flutter/material.dart";

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  bool isRemember = false;

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
              RoundTextField(
                title: "Email address",
                keyboardtype: TextInputType.emailAddress,
                controller: txtEmail,
              ),
              const SizedBox(
                height: 20,
              ),
              RoundTextField(
                title: "Password",
                keyboardtype: TextInputType.emailAddress,
                obscureText: true,
                controller: txtPassword,
              ),

              const SizedBox(
                height: 10,
              ),
              // Password instructions text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isRemember = !isRemember;
                      });
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          isRemember
                              ? Icons.check_box_rounded
                              : Icons.check_box_outline_blank_rounded,
                          size: 20,
                          color: TColor.gray50,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Remember me",
                          style: TextStyle(
                            color: TColor.gray50,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot password",
                      style: TextStyle(
                        color: TColor.gray50,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //Sign up button
              PrimaryButton(
                title: "Sign In",
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const SocialLoginView(),
                  //   ),
                  // );
                },
              ),
              const Spacer(),
              Text(
                "New here? Please register with us",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.white,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // Sign in page button
              SecondaryButton(
                title: "Sign Up",
                // Navigation to the Sign in page
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpView(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
