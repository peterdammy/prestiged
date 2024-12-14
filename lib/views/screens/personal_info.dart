import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:prestige/views/screens/bank_acct.dart';
import 'package:prestige/views/widgets/colors.dart';

import 'package:prestige/views/widgets/dropdown_widget.dart';
import 'package:prestige/views/widgets/font.dart';
import 'package:prestige/views/widgets/progress_button.dart';
import 'package:prestige/views/widgets/text_theme.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
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
              "Personal Information",
              style: AppTextTheme.lightMode.bodyLarge,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Let's Get to know You",
              style: AppTextTheme.lightMode.bodyMedium,
            ),
            const SizedBox(height: 16),
            const DropdownWidget(),
            const SizedBox(height: 16),
            const IntlPhoneField(
              keyboardType: TextInputType.numberWithOptions(),
              cursorHeight: 19.0,
              cursorColor: AppColor.background2,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 19, vertical: 19),
                hintText: "0xxxxx0000",
                filled: true,
                fillColor: AppColor.cColor,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
              ),
              initialCountryCode: "NG",
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 64,
                  horizontal: 12,
                ),
                hintText: "Address",
                hintStyle: AppText.bodyText,
                filled: true,
                fillColor: AppColor.cColor,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
              ),
            ),
            const Spacer(),
            ProgressButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BankAcct(),
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



// import 'package:flutter/material.dart';
// import 'package:prestige/views/widgets/colors.dart';
// import 'package:prestige/views/widgets/country_dropdown.dart';
// import 'package:prestige/views/widgets/dropdown_widget.dart';
// import 'package:prestige/views/widgets/progress_button.dart';
// import 'package:prestige/views/widgets/text_theme.dart';

// class PersonalInfo extends StatefulWidget {
//   const PersonalInfo({super.key});

//   @override
//   State<PersonalInfo> createState() => _PersonalInfoState();
// }

// class _PersonalInfoState extends State<PersonalInfo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColor.background1,
//       appBar: AppBar(
//           backgroundColor: AppColor.background1,
//           leading: IconButton(
//             iconSize: 22,
//             color: AppColor.darkerGrey,
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: const Icon(Icons.arrow_back_ios_new_rounded),
//           ),
//           actions: [
//             Padding(
//               padding: const EdgeInsets.only(
//                   top: 6.0, right: 16, bottom: 6, left: 16),
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: AppColor.skipButtonColor,
//                 ),
//                 onPressed: () {},
//                 child: Padding(
//                   padding: const EdgeInsets.only(
//                       top: 6.0, right: 16, bottom: 6, left: 16),
//                   child: Text(
//                     "skip",
//                     style: AppTextTheme.darkMode.bodyMedium,
//                   ),
//                 ),
//               ),
//             ),
//           ]),
//       body: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Center(
//           child: Column(
//             children: [
//               Text(
//                 "Personal Information",
//                 style: AppTextTheme.lightMode.bodyLarge,
//               ),
//               const SizedBox(
//                 height: 12,
//               ),
//               Text(
//                 "Let's Get to know You",
//                 style: AppTextTheme.lightMode.bodyMedium,
//               ),
//               const SizedBox(height: 16),
//               const DropdownWidget(),
//               const SizedBox(height: 16),
//               const CountryDropdown(),
//               const Spacer(),
//               ProgressButton(onTap: () {}, hintText: "Continue"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
