import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prestige/views/screens/verify_code.dart';
import 'package:prestige/views/widgets/app_textfield.dart';
import 'package:prestige/views/widgets/colors.dart';
import 'package:prestige/views/widgets/progress_button.dart';
import 'package:prestige/views/widgets/text_theme.dart';

class KYCUploadPage extends StatefulWidget {
  const KYCUploadPage({super.key});

  @override
  State<KYCUploadPage> createState() => _KYCUploadPageState();
}

class _KYCUploadPageState extends State<KYCUploadPage> {
  final ninController = TextEditingController();
  // String? uploadedFileName; // Store file name
  // bool isLoading = false; // Control loading state

  // // Function to handle file picking
  // Future<void> _pickFile() async {
  //   FilePickerResult? result = await FilePicker.platform.pickFiles();

  //   if (result != null) {
  //     setState(() {
  //       uploadedFileName = result.files.single.name; // Get file name
  //     });
  //   }
  // }

  // // Function to simulate verification process
  // Future<void> _verifyDocument() async {
  //   if (uploadedFileName == null) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(content: Text("Please upload a file first.")),
  //     );
  //     return;
  //   }

  //   setState(() {
  //     isLoading = true; // Show progress indicator
  //   });

  //   await Future.delayed(
  //       const Duration(seconds: 3)); // Simulated delay for verification

  //   setState(() {
  //     isLoading = false; // Stop loading
  //   });

  //   ScaffoldMessenger.of(context).showSnackBar(
  //     const SnackBar(content: Text("Document Verified Successfully!")),
  //   );
  // }

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
              const SizedBox(height: 24),
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
              const SizedBox(height: 32),
              GestureDetector(
                onTap: () {},
                // onTap: _pickFile,
                child: Container(
                  height: 135,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: AppColor.cColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      SvgPicture.asset("assets/icon/Upload.svg"),
                      const SizedBox(height: 8),
                      Text(
                        "Upload Your NIN Document",
                        style: AppTextTheme.lightMode.bodySmall,
                      ),
                    ],
                  ),
                  // child: uploadedFileName == null
                  //     ? Column(
                  //         children: [
                  //           SvgPicture.asset("assets/icon/Upload.svg"),
                  //           const SizedBox(height: 8),
                  //           Text(
                  //             "Upload Your NIN Document",
                  //             style: AppTextTheme.lightMode.bodySmall,
                  //           ),
                  //         ],
                  //       )
                  //     : Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Text(
                  //             uploadedFileName!,
                  //             style: const TextStyle(color: Colors.black),
                  //           ),
                  //           const Icon(Icons.check_circle, color: Colors.green),
                  //         ],
                  //       ),
                ),
              ),
              const SizedBox(height: 24),
              AppTextfield(
                isFilled: true,
                hintT: "NIN Number",
                labelT: "NIN Number",
                obscureT: false,
                ttextFieldController: ninController,
                keyboardT: const TextInputType.numberWithOptions(),
              ),
              const Spacer(),
              ProgressButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VerifyCode(),
                    ),
                  );
                },
                hintText: "Verify Document",
              ),
              // SizedBox(
              //   width: double.infinity,
              //   height: 50,
              //   child: ElevatedButton(
              //     onPressed: isLoading ? null : _verifyDocument,
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: Colors.blue,
              //       disabledBackgroundColor: Colors.blue.withOpacity(0.5),
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(8),
              //       ),
              //     ),
              //     child: isLoading
              //         ? const CircularProgressIndicator(
              //             color: Colors.white,
              //           )
              //         : const Text(
              //             "Verify Document",
              //             style: TextStyle(color: Colors.white, fontSize: 16),
              //           ),
              //   ),
              // ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:prestige/views/widgets/colors.dart';
// import 'package:prestige/views/widgets/text_theme.dart';

// class KycVerification extends StatefulWidget {
//   const KycVerification({super.key});

//   @override
//   State<KycVerification> createState() => _KycVerificationState();
// }

// class _KycVerificationState extends State<KycVerification> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColor.background1,
//       appBar: AppBar(
//         backgroundColor: AppColor.background1,
//         leading: IconButton(
//           iconSize: 22,
//           color: AppColor.darkerGrey,
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: const Icon(Icons.arrow_back_ios_new_rounded),
//         ),
//         actions: [
//           Padding(
//             padding:
//                 const EdgeInsets.only(top: 6.0, right: 16, bottom: 6, left: 16),
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: AppColor.skipButtonColor,
//               ),
//               onPressed: () {},
//               child: Padding(
//                 padding: const EdgeInsets.only(
//                     top: 6.0, right: 16, bottom: 6, left: 16),
//                 child: Text(
//                   "skip",
//                   style: AppTextTheme.darkMode.bodyMedium,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(24.0),
//           child: Column(
//             children: [
//               const Spacer(),
//               Image.asset("assets/images/rocket.png"),
//               const SizedBox(
//                 height: 24,
//               ),
//               Text(
//                 "KYC",
//                 style: AppTextTheme.lightMode.bodyLarge,
//               ),
//               const SizedBox(
//                 height: 12,
//               ),
//               Text(
//                 "We will need your info to validate you on prestige",
//                 style: AppTextTheme.lightMode.bodyMedium,
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 24),
//               Container(
//                 height: 135,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: AppColor.cColor,
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(
//                       vertical: 19.0, horizontal: 38.5),
//                   child: Column(
//                     children: [
//                       SvgPicture.asset(
//                         "assets/icon/Upload.svg",
//                       ),
//                       Text(
//                         "We will need your kyc to validate you on prestige",
//                         style: AppTextTheme.lightMode.bodySmall,
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const Spacer(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
