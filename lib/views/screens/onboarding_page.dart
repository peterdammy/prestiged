import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prestige/views/widgets/colors.dart';
import 'package:prestige/views/widgets/text_theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  final Color backgroundColor;
  final String imagePath;
  final String containerTitle;
  final String containerSub;
  final bool isLastPage;
  final VoidCallback onNextPressed;
  final PageController pageController;
  final int pageCount;
  final Color containerColor;

  const OnboardingPage({
    super.key,
    required this.backgroundColor,
    required this.imagePath,
    required this.containerTitle,
    required this.containerSub,
    required this.isLastPage,
    required this.onNextPressed,
    required this.pageController,
    required this.pageCount,
    required this.containerColor,
  });

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                // Top Section (Image)
                SizedBox(
                  height: constraints.maxHeight * 0.6, // Adjust dynamically
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      ),
                      image: DecorationImage(
                        image: AssetImage(widget.imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                // Bottom Section (Text and Action Buttons)
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: widget.containerColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.containerTitle,
                              style: AppTextTheme.lightMode.bodyLarge,
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 12),
                            Text(
                              widget.containerSub,
                              style: AppTextTheme.lightMode.bodyMedium,
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Page Indicator
                            SmoothPageIndicator(
                              controller: widget.pageController,
                              count: widget.pageCount,
                              effect: const ExpandingDotsEffect(
                                activeDotColor: AppColor.background2,
                                dotColor: Colors.grey,
                                dotHeight: 8,
                                dotWidth: 8,
                                spacing: 4,
                              ),
                            ),
                            GestureDetector(
                              onTap: widget.onNextPressed,
                              child: widget.isLastPage
                                  ? ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: AppColor.buttonColor,
                                      ),
                                      onPressed: widget.onNextPressed,
                                      child: Text(
                                        "Get Started",
                                        style: AppTextTheme.darkMode.bodySmall,
                                      ))
                                  : SvgPicture.asset(
                                      'assets/icon/progressicon.svg',
                                    ),
                            ),

                            // Next or Get Started Button
                            // ElevatedButton(
                            //   style: ElevatedButton.styleFrom(
                            //     backgroundColor: AppColor.buttonColor,
                            //   ),
                            //   onPressed: widget.onNextPressed,
                            //   child: widget.isLastPage
                            //       ? const Text(
                            //           "Get Started",
                            //           style: TextStyle(
                            //             color: Colors.white,
                            //             fontWeight: FontWeight.bold,
                            //           ),
                            //         )
                            //       : Padding(
                            //           padding: const EdgeInsets.all(12.0),
                            //           child: SvgPicture.asset(
                            //             'assets/icon/progressicon.svg',
                            //             height: 24,
                            //           ),
                            //         ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:prestige/views/widgets/text_theme.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class OnboardingPage extends StatefulWidget {
//   final Color backgroundColor;
//   final String imagePath;
//   final String containerTitle;
//   final String containerSub;
//   final bool isLastPage;
//   final VoidCallback onNextPressed;
//   final PageController pageController;
//   final int pageCount;
//   final Color containerColor;
//   const OnboardingPage({
//     super.key,
//     required this.backgroundColor,
//     required this.imagePath,
//     required this.containerTitle,
//     required this.containerSub,
//     required this.isLastPage,
//     required this.onNextPressed,
//     required this.pageController,
//     required this.pageCount,
//     required this.containerColor,
//   });

//   @override
//   State<OnboardingPage> createState() => _OnboardingPageState();
// }

// class _OnboardingPageState extends State<OnboardingPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: SizedBox(
//           height: MediaQuery.of(context).size.height,
//           child: Container(
//             color: widget.backgroundColor,
//             child: Column(
//               children: [
//                 const SizedBox(height: 31),
//                 Stack(
//                   children: [
//                     Container(
//                       height: MediaQuery.of(context).size.height * 0.58,
//                       decoration: BoxDecoration(
//                         borderRadius: const BorderRadius.only(
//                             topLeft: Radius.circular(24),
//                             topRight: Radius.circular(24)),
//                         image: DecorationImage(
//                           image: AssetImage(widget.imagePath),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Expanded(
//                   child: Container(
//                     padding: const EdgeInsets.all(24.0),
//                     decoration: BoxDecoration(
//                       color: widget.containerColor,
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(widget.containerTitle,
//                             style: AppTextTheme.lightMode.bodyLarge),
//                         const SizedBox(height: 16),
//                         Text(
//                           widget.containerSub,
//                           style: AppTextTheme.lightMode.bodyMedium,
//                         ),
//                         const SizedBox(height: 30),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             SmoothPageIndicator(
//                               controller: widget.pageController,
//                               count: widget.pageCount,
//                               effect: const ExpandingDotsEffect(
//                                 activeDotColor: Colors.blue,
//                                 dotColor: Colors.grey,
//                                 dotHeight: 6,
//                                 dotWidth: 6,
//                                 spacing: 3,
//                               ),
//                             ),
//                             FloatingActionButton(
//                               onPressed: widget.onNextPressed,
//                               backgroundColor: Colors.blue,
//                               child: widget.isLastPage
//                                   ? const Text(
//                                       "Get Started",
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 14,
//                                       ),
//                                     )
//                                   : SvgPicture.asset(
//                                       'assets/icon/progressicon.svg',
//                                       width: 24,
//                                       height: 24,
//                                     ),
//                             ),
//                           ],
//                         ),
//                         const Spacer(),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
