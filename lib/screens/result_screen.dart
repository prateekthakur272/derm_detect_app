import 'dart:typed_data';

import 'package:derm_detect_app/constants.dart';
import 'package:derm_detect_app/widgets/about_cancer.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final Uint8List bytes;
  final Map<String,dynamic> result;
  const ResultScreen({super.key, required this.bytes, required this.result});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
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
      body: Center(
        child: DottedBorder(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.memory(widget.bytes,),
              space24,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Results', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  const Divider(),
                  Text('Type: ${widget.result['result']}'),
                  Text('Accuracy: ${widget.result['accuracy']}'),
                  space16,
                  FilledButton(
              onPressed: () {
                showDialog(context: context, builder: (context)=> AboutCancer(type: widget.result['result']));
              },
              style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(onPrimaryColor),
                  backgroundColor: MaterialStatePropertyAll(primaryColor)),
              child: Text('About ${widget.result['result']}'),
            )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}