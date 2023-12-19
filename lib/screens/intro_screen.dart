import 'package:derm_detect_app/constants.dart';
import 'package:derm_detect_app/widgets/login_register.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/nav_logo.png',
          height: 36,
        ),
        centerTitle: false,
        actions: [
          TextButton(onPressed: (){}, child: const Text('About')),
          space16,
          TextButton(onPressed: (){}, child: const Text('Team')),
          space16,
          TextButton(onPressed: (){}, child: const Text('Contact')),
          space16,
          FilledButton(onPressed: (){
            showDialog(context: context, builder: (context)=> const LoginRegisterDialog());
          }, child: const Text('LOGIN'))
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
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
            FilledButton(onPressed: (){}, child: const Text('QUICK CHECK-UP'))
          ],
        )
      ]),
    );
  }
}
