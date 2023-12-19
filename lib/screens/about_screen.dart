import 'package:derm_detect_app/constants.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset('assets/about-img.png',width: double.maxFinite,fit: BoxFit.contain,),
        const Padding(
          padding: EdgeInsets.all(48),
          child: Row(
            children: [
              Expanded(child: Text('AN OVERVIEW OF OUR SERVICE',style: TextStyle(fontSize: 56),)),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('At dermDetect, we use advanced technology to empower you with quick and accurate skin cancer detection. Our mission is to ensure skin wellness through innovation and early insights.', style: TextStyle(fontSize: 16),),
                  space16,
                  Text('\u2022 Quick and Easy Testing\n\u2022 Confidential and Secure\n\u2022 Accurate Results',  style: TextStyle(fontSize: 16)),
                ],
              )),
            ],
          ),
        )
      ],
    );
  }
}