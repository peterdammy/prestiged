import 'package:flutter/material.dart';
import 'package:prestige/views/widgets/colors.dart';
import 'package:prestige/views/widgets/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColor.background1,
    textTheme: AppTextTheme.lightMode,
  );

  static ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColor.background2,
    textTheme: AppTextTheme.darkMode,
  );
}
