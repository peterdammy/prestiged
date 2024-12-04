import 'package:flutter/material.dart';
import 'package:prestige/views/widgets/colors.dart';
import 'package:prestige/views/widgets/text_theme.dart';

class Onboard extends StatelessWidget {
  const Onboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.oColor1,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30.0,
              left: 24,
              right: 24,
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/image1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      right: 20,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          'skip',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(24.0),
              decoration: const BoxDecoration(
                color: AppColor.background1,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get Affordable Insurance Policy",
                    style: AppTextTheme.lightMode.bodyLarge,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Orci, enim auctor mauris sagittis, purus. Parturient facilisi ut et fusce. Cras volutpat adipiscing lobortis amet erat. Diam nunc urna et massa, magna amet eleifend. Diam sit ultricies et odio tellus dictum volutpat sit.",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
