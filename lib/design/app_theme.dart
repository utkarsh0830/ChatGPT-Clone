import 'package:chatgpt_clone/design/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.scaffoldBgColor
    ),
    scaffoldBackgroundColor: AppColors.scaffoldBgColor
  );
}