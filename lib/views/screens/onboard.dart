import 'package:flutter/material.dart';
import 'package:prestige/views/widgets/font.dart';

class Onboard extends StatelessWidget {
  const Onboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.sizeOf(context).width,
        child: Image.asset(
          'assets/images/image1.png',
        ),
      ),
    );
  }
}
