import 'package:flutter/material.dart';
import 'package:prestige/views/widgets/colors.dart';
import 'package:prestige/views/widgets/text_theme.dart';

class SocialContainer extends StatelessWidget {
  final String imagePath;
  final String containerText;
  const SocialContainer({
    super.key,
    required this.imagePath,
    required this.containerText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 164,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppColor.containerColor,
          )),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(imagePath),
            const SizedBox(width: 20),
            Text(
              containerText,
              style: AppTextTheme.lightMode.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
