import 'package:derm_detect_app/constants.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Image.asset(
        'assets/hero-section.png',
        fit: BoxFit.fitWidth,
        width: double.maxFinite,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            intro,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 52, color: onPrimaryColor),
          ),
          space40,
          const Text(
            introSubtitle,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, color: onPrimaryColor),
          ),
          space32,
          FilledButton(onPressed: () {}, child: const Text('QUICK CHECK-UP'))
        ],
      )
    ]);
  }
}
