import 'package:flutter/material.dart';
import 'package:prestige/views/widgets/colors.dart';
import 'package:prestige/views/widgets/social_container.dart';
import 'package:prestige/views/widgets/text_theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background1,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              "Login",
              style: AppTextTheme.lightMode.bodyLarge,
            ),
            const Spacer(),
            Row(
              children: [
                SocialContainer(
                  imagePath: "assets/images/Facebook.png",
                  containerText: "Facebook",
                ),
                const SizedBox(width: 16),
                SocialContainer(
                  imagePath: "assets/images/Google.png",
                  containerText: "Google",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
