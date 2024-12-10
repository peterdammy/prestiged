import 'package:flutter/material.dart';

import 'package:prestige/views/screens/login_page.dart';
import 'package:prestige/views/screens/personal_info.dart';

import '../widgets/app_textfield.dart';
import '../widgets/colors.dart';
import '../widgets/progress_button.dart';
import '../widgets/social_container.dart';
import '../widgets/text_theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscureT = false;

  @override
  @override
  void initState() {
    super.initState();
    obscureT = true;
  }

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
            Image.asset(
              "assets/images/PrestigeLogo.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 60),
            Text(
              "Create Account",
              style: AppTextTheme.lightMode.bodyLarge,
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialContainer(
                  imagePath: "assets/images/Facebook.png",
                  containerText: "Facebook",
                ),
                SizedBox(width: 24),
                SocialContainer(
                  imagePath: "assets/images/Google.png",
                  containerText: "Google",
                ),
              ],
            ),
            const SizedBox(height: 24),
            AppTextfield(
              keyboardT: const TextInputType.numberWithOptions(),
              isFilled: true,
              hintT: 'Agent Code',
              labelT: 'Agent Code',
              obscureT: false,
              ttextFieldController: emailController,
            ),
            const SizedBox(height: 16),
            AppTextfield(
              isFilled: true,
              hintT: 'Username',
              labelT: 'Username',
              obscureT: false,
              ttextFieldController: emailController,
            ),
            const SizedBox(height: 16),
            AppTextfield(
              isFilled: true,
              hintT: 'Email Address',
              labelT: 'Email Address',
              obscureT: false,
              ttextFieldController: emailController,
            ),
            const SizedBox(height: 16),
            AppTextfield(
              suffixI: IconButton(
                onPressed: () {
                  setState(() {
                    obscureT = !obscureT;
                  });
                },
                icon: Icon(
                  obscureT
                      ? Icons.visibility_off_rounded
                      : Icons.visibility_rounded,
                ),
              ),
              isFilled: true,
              hintT: "Password",
              labelT: "Password",
              obscureT: true,
              ttextFieldController: passwordController,
            ),
            const SizedBox(height: 36),
            ProgressButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PersonalInfo(),
                  ),
                );
              },
              hintText: "Continue",
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an Account",
                  style: AppTextTheme.lightMode.bodyMedium,
                ),
                const SizedBox(width: 6),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Login",
                    style: AppTextTheme.lightMode.displaySmall,
                  ),
                ),
              ],
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
