import 'package:chatgpt_clone/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';

import 'design/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: OnboardingPage(),
    );
  }
}
