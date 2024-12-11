import 'package:flutter/material.dart';
import 'package:prestige/views/widgets/colors.dart';
import 'package:prestige/views/widgets/text_theme.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({super.key});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String? dropDownOptions; // Nullable to allow a default hint

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.cColor, // Background color for the container
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: dropDownOptions, // Currently selected value
                hint: Text(
                  "Gender",
                  style: AppTextTheme.lightMode.bodyMedium,
                ), // Placeholder
                icon: const SizedBox.shrink(), // Remove default dropdown arrow
                style: AppTextTheme.lightMode.displayLarge,
                onChanged: (String? newOptions) {
                  setState(() {
                    dropDownOptions = newOptions;
                  });
                },
                items: const [
                  DropdownMenuItem<String>(
                    value: "Male",
                    child: Text("Male"),
                  ),
                  DropdownMenuItem<String>(
                    value: "Female",
                    child: Text("Female"),
                  ),
                  DropdownMenuItem<String>(
                    value: "Others",
                    child: Text("Others"),
                  ),
                ],
              ),
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_down_rounded, // Suffix icon
            color: AppColor.skipButtonColor,
          ),
        ],
      ),
    );
  }
}
