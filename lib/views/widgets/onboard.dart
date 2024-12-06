import 'package:flutter/material.dart';
import 'package:prestige/views/screens/onboarding_page.dart';
import 'package:prestige/views/widgets/colors.dart';

import '../screens/login_page.dart';

class OnboardWidget extends StatefulWidget {
  const OnboardWidget({super.key});

  @override
  State<OnboardWidget> createState() => _OnboardWidgetState();
}

class _OnboardWidgetState extends State<OnboardWidget> {
  final PageController _pageController = PageController(initialPage: 0);

  final List<Map<String, dynamic>> _pages = [
    {
      'imagePath': 'assets/images/image1.png',
      'backgroundColor': AppColor.oColor1,
      'title': 'Get Affordable Insurance Policy',
      'description':
          'Orci, enim auctor mauris sagittis, purus. Parturient facilisi ut erat fusce. Cras volutpat adipiscing lobortis sed amet. Etiam nunc nam urna, magna amet donec. Diam ac ultrices sit odio tellus dictum volutpat sit. ',
    },
    {
      'imagePath': 'assets/images/image2.png',
      'backgroundColor': AppColor.oColor2,
      'title': 'Get Affordable Insurance Policy',
      'description':
          'Orci, enim auctor mauris sagittis, purus. Parturient facilisi ut erat fusce. Cras volutpat adipiscing lobortis sed amet. Etiam nunc nam urna, magna amet donec. Diam ac ultrices sit odio tellus dictum volutpat sit. ',
    },
    {
      'imagePath': 'assets/images/image3.png',
      'backgroundColor': AppColor.oColor3,
      'title': 'Get Affordable Insurance Policy',
      'description':
          'Orci, enim auctor mauris sagittis, purus. Parturient facilisi ut erat fusce. Cras volutpat adipiscing lobortis sed amet. Etiam nunc nam urna, magna amet donec. Diam ac ultrices sit odio tellus dictum volutpat sit. ',
    },
  ];

  void _onNextPressed() {
    if (_pageController.page!.toInt() < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Navigate to the main app or another screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _pages.length,
              itemBuilder: (context, index) {
                final page = _pages[index];
                return OnboardingPage(
                  imagePath: page['imagePath'],
                  backgroundColor: page['backgroundColor'],
                  isLastPage: index == _pages.length - 1,
                  onNextPressed: _onNextPressed,
                  pageController: _pageController,
                  pageCount: _pages.length,
                  containerTitle: page['title'],
                  containerSub: page['description'],
                  containerColor: AppColor.background1,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:prestige/views/widgets/colors.dart';
// import 'package:prestige/views/widgets/text_theme.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class Onboard extends StatefulWidget {
//   const Onboard({super.key});

//   @override
//   State<Onboard> createState() => _OnboardState();
// }

// class _OnboardState extends State<Onboard> {
//   final PageController _pageController = PageController(initialPage: 0);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       top: false,
//       child: Scaffold(
//         backgroundColor: AppColor.oColor1,
//         body: LayoutBuilder(
//           builder: (context, constraints) {
//             // Ensures the layout adapts to varying screen sizes
//             final availableHeight = constraints.maxHeight;

//             return Column(
//               children: [
//                 // Top image with dynamic height
//                 SizedBox(
//                   height:
//                       availableHeight * 0.58, // Adjust height proportionally
//                   child: Padding(
//                     padding: const EdgeInsets.only(
//                       top: 30.0,
//                       left: 24,
//                       right: 24,
//                     ),
//                     child: Stack(
//                       children: [
//                         Image.asset(
//                           'assets/images/image1.png',
//                           width: double.infinity,
//                           fit: BoxFit.cover,
//                         ),
//                         Positioned(
//                           top: 45,
//                           right: 20,
//                           child: Padding(
//                             padding: const EdgeInsets.only(
//                               top: 6.0,
//                               right: 16,
//                               bottom: 6,
//                               left: 16,
//                             ),
//                             child: ElevatedButton(
//                               onPressed: () {},
//                               style: ElevatedButton.styleFrom(
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(20),
//                                 ),
//                               ),
//                               child: const Text(
//                                 'Skip',
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 // Expanded container below
//                 Expanded(
//                   flex: 4,
//                   child: Container(
//                     padding: const EdgeInsets.all(24.0),
//                     decoration:
//                         const BoxDecoration(color: AppColor.background1),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Get Affordable Insurance Policy",
//                           style: AppTextTheme.lightMode.bodyLarge,
//                         ),
//                         const SizedBox(height: 16),
//                         Text(
//                           "Orci, enim auctor mauris sagittis, purus. Parturient facilisi ut et fusce. Cras volutpat adipiscing lobortis amet erat. Diam nunc urna et massa, magna amet eleifend. Diam sit ultricies et odio tellus dictum volutpat sit.",
//                           style: AppTextTheme.lightMode.bodyMedium,
//                         ),
//                         const Spacer(),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             SmoothPageIndicator(
//                               controller: _pageController,
//                               count: 3,
//                             ),
//                             FloatingActionButton(
//                               onPressed: () {},
//                               backgroundColor: AppColor.buttonColor,
//                               child: SvgPicture.asset(
//                                 alignment: Alignment.center,
//                                 'assets/icon/progressicon.svg',
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:prestige/views/widgets/colors.dart';
// import 'package:prestige/views/widgets/text_theme.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class Onboard extends StatefulWidget {
//   const Onboard({super.key});

//   @override
//   State<Onboard> createState() => _OnboardState();
// }

// class _OnboardState extends State<Onboard> {
//   final PageController _pageController = PageController(initialPage: 0);
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       top: false,
//       child: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         child: Container(
//           color: AppColor.oColor1,
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(
//                   top: 30.0,
//                   left: 24,
//                   right: 24,
//                 ),
//                 child: Column(
//                   children: [
//                     Stack(
//                       children: [
//                         Container(
//                           height: MediaQuery.of(context).size.height * 0.6,
//                           decoration: const BoxDecoration(
//                             image: DecorationImage(
//                               image: AssetImage('assets/images/image1.png'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           top: 40,
//                           right: 20,
//                           child: ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                             ),
//                             child: const Text(
//                               'skip',
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   padding: const EdgeInsets.all(24.0),
//                   decoration: const BoxDecoration(
//                     color: AppColor.background1,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Get Affordable Insurance Policy",
//                         style: AppTextTheme.lightMode.bodyLarge,
//                       ),
//                       const SizedBox(height: 16),
//                       Text(
//                         "Orci, enim auctor mauris sagittis, purus. Parturient facilisi ut et fusce. Cras volutpat adipiscing lobortis amet erat. Diam nunc urna et massa, magna amet eleifend. Diam sit ultricies et odio tellus dictum volutpat sit.",
//                         style: AppTextTheme.lightMode.bodyMedium,
//                       ),
//                       const SizedBox(height: 25),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           SmoothPageIndicator(
//                               controller: _pageController, count: 3),
//                           FloatingActionButton(
//                             onPressed: () {},
//                             backgroundColor: AppColor.buttonColor,
//                             child: SvgPicture.asset(
//                                 'assets/icon/progressicon.svg'),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
