import 'package:derm_detect_app/constants.dart';
import 'package:derm_detect_app/screens/checkup_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String email;
  const HomeScreen({super.key, required this.email});

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
            Navigator.popUntil(context, (route) => route.isFirst);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome $email',
              style: const TextStyle(
                fontSize: 44,
              ),
            ),
            space40,
            FilledButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CheckUpScreen()));
              },
              style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(onPrimaryColor),
                  backgroundColor: MaterialStatePropertyAll(primaryColor)),
              child: const Text('TAKE A CHECKUP'),
            )
          ],
        ),
      ),
    );
  }
}
