import 'package:flutter/material.dart';
import 'package:prestige/views/widgets/colors.dart';
import 'package:prestige/views/widgets/text_theme.dart';

class AppTextfield extends StatelessWidget {
  final bool isFilled;
  final String hintT;
  final String labelT;
  final bool obscureT;
  const AppTextfield({
    super.key,
    required this.isFilled,
    required this.hintT,
    required this.labelT,
    required this.obscureT,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController textfieldController = TextEditingController();
    return TextField(
      controller: textfieldController,
      obscureText: obscureT,
      decoration: InputDecoration(
        filled: isFilled,
        fillColor: AppColor.containerColor,
        hintText: hintT,
        hintStyle: AppTextTheme.lightMode.bodyMedium,
        labelText: labelT,
        labelStyle: AppTextTheme.lightMode.bodySmall,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
