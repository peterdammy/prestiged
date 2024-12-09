import 'package:flutter/material.dart';
import 'package:prestige/views/widgets/colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static const TextTheme lightMode = TextTheme(
    bodyLarge: TextStyle(
      fontSize: 28,
      fontFamily: 'Roobert',
      fontWeight: FontWeight.w900,
      color: AppColor.background2,
    ),
    displayMedium: TextStyle(
      fontSize: 16,
      fontFamily: 'Roobert',
      fontWeight: FontWeight.w700,
      color: AppColor.background2,
    ),
    displaySmall: TextStyle(
      fontSize: 16,
      fontFamily: 'Roobert',
      fontWeight: FontWeight.w700,
      color: AppColor.buttonColor,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontFamily: 'Roobert',
      fontWeight: FontWeight.w400,
      color: AppColor.background2,
    ),
    bodySmall: TextStyle(
      fontSize: 16,
      fontFamily: 'Roobert',
      fontWeight: FontWeight.w700,
      color: AppColor.darkerGrey,
    ),
  );

  static const TextTheme darkMode = TextTheme(
    bodyLarge: TextStyle(
      fontSize: 24,
      fontFamily: 'Roobert',
      fontWeight: FontWeight.w900,
      color: AppColor.background1,
    ),
    displayMedium: TextStyle(
      fontSize: 16,
      fontFamily: 'Roobert',
      fontWeight: FontWeight.w700,
      color: AppColor.background1,
    ),
    displaySmall: TextStyle(
      fontSize: 16,
      fontFamily: 'Roobert',
      fontWeight: FontWeight.w700,
      color: AppColor.buttonColor,
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
