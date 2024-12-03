import 'package:flutter/material.dart';
import 'package:tee_bay/core/app_theme/app_colors.dart';

class AppTheme {
  //light theme ======
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: AppBarTheme(
      color: AppColors.backgroundColor,
      backgroundColor: AppColors.backgroundColor,
      foregroundColor: AppColors.titleText,
      elevation: 0,
      centerTitle: true,
    ),
  );
  //dark theme ==========

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      color: Colors.blueGrey,
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
    ),
  );
}
