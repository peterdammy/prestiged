import 'package:flutter/material.dart';
import 'package:prestige/views/widgets/colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static const TextTheme lightMode = TextTheme(
    bodyLarge: TextStyle(
      fontSize: 24,
      fontFamily: 'Roobert',
      fontWeight: FontWeight.w900,
      color: AppColor.background2,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontFamily: 'Roobert',
      fontWeight: FontWeight.w400,
      color: AppColor.background2,
    ),
    bodySmall: TextStyle(
      fontSize: 16,
      fontFamily: 'Roobert',
      fontWeight: FontWeight.w700,
      color: AppColor.background2,
    ),
  );

  static const TextTheme darkMode = TextTheme(
    bodyLarge: TextStyle(
      fontSize: 24,
      fontFamily: 'Roobert',
      fontWeight: FontWeight.w900,
      color: AppColor.background1,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontFamily: 'Roobert',
      fontWeight: FontWeight.w400,
      color: AppColor.background1,
    ),
    bodySmall: TextStyle(
      fontSize: 16,
      fontFamily: 'Roobert',
      fontWeight: FontWeight.w700,
      color: AppColor.background1,
    ),
  );
}
