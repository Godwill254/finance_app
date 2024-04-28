import 'package:finance_app/view/login/sign_up_view.dart';
import 'package:finance_app/view/login/social_login.dart';
import 'package:finance_app/view/login/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/common/color_extension.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Trackizer",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Raleway",
        colorScheme: ColorScheme.fromSeed(
          seedColor: TColor.primary,
          background: TColor.gray80,
          primary: TColor.primary,
          primaryContainer: TColor.gray60,
          secondary: TColor.secondary,
        ),
        useMaterial3: false,
      ),
      home: const SignUpView(),
    );
  }
}
