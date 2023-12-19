import 'package:derm_detect_app/constants.dart';
import 'package:flutter/material.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/team-img.png',
        width: double.maxFinite,
        fit: BoxFit.cover,
        height: 600,
      ),
      const Padding(
        padding: EdgeInsets.all(48.0),
        child: Column(
          children: [
            Text(
              'MEET OUR TEAM',
              style: TextStyle(fontSize: 56, color: onPrimaryColor),
            ),
            space40,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TeamMember(
                    name: 'Prateek Thakur',
                    role: 'DEVELOPER',
                    image: AssetImage('assets/prateek.jpg')),
                TeamMember(
                    name: 'Pranay Nagpure',
                    role: 'DEVELOPER',
                    image: AssetImage('assets/pranay.png')),
                TeamMember(
                    name: 'Priyanshi Agrawal',
                    role: 'DEVELOPER',
                    image: AssetImage('assets/priyanshi.jpg')),
              ],
            )
          ],
        ),
      ),
    ]);
  }
}

class TeamMember extends StatelessWidget {
  final String name;
  final String role;
  final ImageProvider image;
  const TeamMember(
      {super.key, required this.name, required this.role, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(48),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image(
                image: image,
                fit: BoxFit.contain,
                height: 180,
              ),
            ),
            space16,
            Text(
              name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            space8,
            Text(role,
                style:
                    const TextStyle(fontSize: 16))
          ],
        ),
      ),
    );
  }
}
