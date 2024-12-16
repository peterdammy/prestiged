import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:prestige/views/widgets/colors.dart';
import 'package:prestige/views/widgets/text_theme.dart';

class VerifyCode extends StatefulWidget {
  const VerifyCode({super.key});

  @override
  State<VerifyCode> createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background1,
      appBar: AppBar(
        backgroundColor: AppColor.background1,
        leading: IconButton(
          iconSize: 22,
          color: AppColor.darkerGrey,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        actions: [
          Padding(
            padding:
                const EdgeInsets.only(top: 6.0, right: 16, bottom: 6, left: 16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.skipButtonColor,
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 6.0, right: 16, bottom: 6, left: 16),
                child: Text(
                  "skip",
                  style: AppTextTheme.darkMode.bodyMedium,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Verification Code",
                style: AppTextTheme.lightMode.bodyLarge,
              ),
              const SizedBox(height: 16),
              Text(
                "A verification code has been sent to johndoe@gmail.com",
                style: AppTextTheme.lightMode.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              _pinInputField(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pinInputField() {
    return const Form(
      child: Column(
        children: [
          Pinput(),
        ],
      ),
    );
  }
}
