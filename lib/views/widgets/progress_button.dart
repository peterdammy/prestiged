// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:prestige/views/widgets/colors.dart';
import 'package:prestige/views/widgets/text_theme.dart';

class ProgressButton extends StatelessWidget {
  final Function()? onTap;
  final String hintText;
  const ProgressButton({
    super.key,
    required this.onTap,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColor.buttonColor,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 18,
              left: 48,
              right: 48,
              bottom: 18,
            ),
            child: Text(
              hintText,
              style: AppTextTheme.darkMode.displayMedium,
            ),
          ),
        ),
      ),
    );
  }
}
