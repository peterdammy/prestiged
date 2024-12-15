import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prestige/views/widgets/colors.dart';
import 'package:prestige/views/widgets/text_theme.dart';

class KycVerification extends StatefulWidget {
  const KycVerification({super.key});

  @override
  State<KycVerification> createState() => _KycVerificationState();
}

class _KycVerificationState extends State<KycVerification> {
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const Spacer(),
              Image.asset("assets/images/rocket.png"),
              const SizedBox(
                height: 24,
              ),
              Text(
                "KYC",
                style: AppTextTheme.lightMode.bodyLarge,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "We will need your info to validate you on prestige",
                style: AppTextTheme.lightMode.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Container(
                height: 135,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.cColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 19.0, horizontal: 38.5),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        "assets/icon/Upload.svg",
                      ),
                      Text(
                        "We will need your kyc to validate you on prestige",
                        style: AppTextTheme.lightMode.bodySmall,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
