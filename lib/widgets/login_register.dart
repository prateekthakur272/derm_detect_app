import 'package:derm_detect_app/constants.dart';
import 'package:flutter/material.dart';

class LoginRegisterDialog extends StatefulWidget {
  const LoginRegisterDialog({super.key});

  @override
  State<LoginRegisterDialog> createState() => _LoginRegisterDialogState();
}

class _LoginRegisterDialogState extends State<LoginRegisterDialog> {
  @override
  Widget build(BuildContext context) {
    return const Dialog(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: DefaultTabController(
          length: 2,
          child: SizedBox(
            height: 360,
            width: 420,
            child: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(
                      text: 'Login',
                    ),
                    Tab(
                      text: 'Register',
                    )
                  ],
                ),
                space16,
                Expanded(
                  child: TabBarView(children: [Login(), Register()]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final password = TextEditingController();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Welcome to dermDetect',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        space16,
        TextField(
          controller: email,
          decoration: const InputDecoration(
              hintText: 'Email address', prefixIcon: Icon(Icons.email)),
        ),
        space16,
        TextField(
          controller: password,
          decoration: const InputDecoration(
              hintText: 'Password', prefixIcon: Icon(Icons.password)),
        ),
        space16,
        FilledButton(
          onPressed: () {},
          style: FilledButton.styleFrom(
              backgroundColor: primaryColor, foregroundColor: onPrimaryColor),
          child:const Text('Login'),
        )
      ],
    );
  }
}

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final password = TextEditingController();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Create Account',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        space16,
        TextField(
          controller: email,
          decoration: const InputDecoration(
              hintText: 'Email address', prefixIcon: Icon(Icons.email)),
        ),
        space16,
        TextField(
          controller: password,
          decoration: const InputDecoration(
              hintText: 'Password', prefixIcon: Icon(Icons.password)),
        ),
        space16,
        FilledButton(
          onPressed: () {},
          style: FilledButton.styleFrom(
              backgroundColor: primaryColor, foregroundColor: onPrimaryColor),
          child:const Text('Create Account'),
        )
      ],
    );
  }
}
