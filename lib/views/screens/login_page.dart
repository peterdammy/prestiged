import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prestige/views/screens/signin_page.dart';
import 'package:prestige/views/widgets/colors.dart';
import 'package:prestige/views/widgets/progress_button.dart';
import 'package:prestige/views/widgets/social_container.dart';
import 'package:prestige/views/widgets/text_theme.dart';

import '../widgets/app_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                SizedBox(width: 24),
                SocialContainer(
                  imagePath: "assets/images/Google.png",
                  containerText: "Google",
                ),
              ],
            ),
            const SizedBox(height: 24),
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
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                child: Text(
                  "Forgot Password",
                  style: AppTextTheme.lightMode.bodyMedium,
                ),
              ),
            ),
            const SizedBox(height: 24),
            ProgressButton(onTap: () {}, hintText: "Login"),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                "assets/icon/fingerprint.svg",
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account yet?",
                  style: AppTextTheme.lightMode.bodyMedium,
                ),
                const SizedBox(width: 6),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SigninPage(),
                      ),
                    );
                  },
                  child: Text(
                    "Create Account",
                    style: AppTextTheme.lightMode.displaySmall,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
