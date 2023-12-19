import 'package:derm_detect_app/constants.dart';
import 'package:derm_detect_app/screens/about_screen.dart';
import 'package:derm_detect_app/screens/intro_screen.dart';
import 'package:derm_detect_app/screens/team_screen.dart';
import 'package:derm_detect_app/widgets/login_register.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          child: Image.asset(
            'assets/nav_logo.png',
            height: 36,
          ),
          onTap: () {
            setState(() {
              pageIndex = 0;
            });
          },
        ),
        centerTitle: false,
        actions: [
          TextButton(onPressed: () {
            setState(() {
              pageIndex = 1;
            });
          }, child: const Text('About')),
          space16,
          TextButton(onPressed: () {
            setState(() {
              pageIndex = 2;
            });
          }, child: const Text('Team')),
          space16,
          TextButton(onPressed: () {}, child: const Text('Contact')),
          space16,
          FilledButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => const LoginRegisterDialog());
              },
              child: const Text('LOGIN'))
        ],
      ),
      body: IndexedStack(
          index: pageIndex,
          children: const [IntroScreen(), AboutScreen(), TeamScreen()]),
    );
  }
}
