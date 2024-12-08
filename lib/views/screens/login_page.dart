import 'package:flutter/material.dart';
import 'package:prestige/views/widgets/colors.dart';
import 'package:prestige/views/widgets/social_container.dart';
import 'package:prestige/views/widgets/text_theme.dart';

import '../widgets/app_textfield.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              "Login",
              style: AppTextTheme.lightMode.bodyLarge,
            ),
            const SizedBox(height: 24),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialContainer(
                  imagePath: "assets/images/Facebook.png",
                  containerText: "Facebook",
                ),
                SizedBox(width: 20),
                SocialContainer(
                  imagePath: "assets/images/Google.png",
                  containerText: "Google",
                ),
              ],
            ),
            const SizedBox(height: 24),
            const AppTextfield(
              isFilled: true,
              hintT: 'Email Address',
              labelT: 'Email Address',
              obscureT: false,
            ),
            const SizedBox(height: 16),
            const AppTextfield(
              isFilled: true,
              hintT: "Password",
              labelT: "Password",
              obscureT: true,
            ),
          ],
        ),
      ),
    );
  }
}
