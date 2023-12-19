import 'package:derm_detect_app/constants.dart';
import 'package:derm_detect_app/screens/about_screen.dart';
import 'package:derm_detect_app/screens/intro_screen.dart';
import 'package:derm_detect_app/widgets/login_register.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      body: const IndexedStack(
        index: 1,
        children: [IntroScreen(),AboutScreen()]
      ),
    );
  }
}
