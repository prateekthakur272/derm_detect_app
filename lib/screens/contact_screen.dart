import 'package:derm_detect_app/constants.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final messageController = TextEditingController();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'CONTACT US',
                    style: TextStyle(
                      fontSize: 56,
                    ),
                  ),
                  space16,
                  Image.asset(
                    'assets/contact-us.jpg',
                    width: double.maxFinite,
                  )
                ],
              ),
            ),
            space40,
            space40,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: nameController,
                    decoration: const InputDecoration(label: Text('Name')),
                  ),
                  space16,
                  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(label: Text('Email')),
                  ),
                  space16,
                  TextField(
                    controller: messageController,
                    maxLines: 8,
                    minLines: 8,
                    decoration: const InputDecoration(label: Text('Message')),
                  ),
                  space16,
                  FilledButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(primaryColor),
                        foregroundColor:
                            MaterialStatePropertyAll(onPrimaryColor)),
                    child: const Text('SEND'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
