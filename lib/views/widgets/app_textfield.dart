import 'package:flutter/material.dart';
import 'package:prestige/views/widgets/colors.dart';
import 'package:prestige/views/widgets/text_theme.dart';

class AppTextfield extends StatefulWidget {
  final TextEditingController ttextFieldController;
  final bool isFilled;
  final String hintT;
  final String labelT;
  final bool obscureT;
  final Widget? suffixI;
  final TextInputType? keyboardT;
  const AppTextfield({
    super.key,
    required this.isFilled,
    required this.hintT,
    required this.labelT,
    required this.obscureT,
    this.suffixI,
    required this.ttextFieldController,
    this.keyboardT,
  });

  @override
  State<AppTextfield> createState() => _AppTextfieldState();
}

class _AppTextfieldState extends State<AppTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.keyboardT,
      style: const TextStyle(
        color: AppColor.background2,
      ),
      controller: widget.ttextFieldController,
      obscureText: widget.obscureT,
      decoration: InputDecoration(
        suffixIcon: widget.suffixI,
        suffixIconColor: AppColor.iconColor,
        filled: widget.isFilled,
        fillColor: AppColor.containerColor,
        hintText: widget.hintT,
        hintStyle: AppTextTheme.lightMode.bodyMedium,
        labelText: widget.labelT,
        labelStyle: AppTextTheme.lightMode.bodySmall,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
