import 'package:flutter/material.dart';
import 'package:prestige/views/screens/kyc_verification.dart';

import 'package:prestige/views/widgets/app_textfield.dart';
import 'package:prestige/views/widgets/bank_dropdown.dart';
import 'package:prestige/views/widgets/colors.dart';

import 'package:prestige/views/widgets/progress_button.dart';
import 'package:prestige/views/widgets/text_theme.dart';

class BankAcct extends StatefulWidget {
  const BankAcct({super.key});

  @override
  State<BankAcct> createState() => _BankAcctState();
}

class _BankAcctState extends State<BankAcct> {
  final acctnoController = TextEditingController();
  final acctnameController = TextEditingController();
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "Bank Account",
              style: AppTextTheme.lightMode.bodyLarge,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Add your details to receive commission",
              style: AppTextTheme.lightMode.bodyMedium,
            ),
            const SizedBox(height: 16),
            AppTextfield(
              isFilled: true,
              hintT: "Account number",
              labelT: "Account number",
              obscureT: false,
              ttextFieldController: acctnoController,
              keyboardT: const TextInputType.numberWithOptions(),
            ),
            const SizedBox(height: 16),
            const BankDropdown(),
            const SizedBox(height: 16),
            AppTextfield(
              isFilled: true,
              hintT: "Account name",
              labelT: "Account name",
              obscureT: false,
              ttextFieldController: acctnameController,
            ),
            const Spacer(),
            ProgressButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const KycVerification(),
                    ),
                  );
                },
                hintText: "Continue"),
          ],
        ),
      ),
    );
  }
}
