import 'package:derm_detect_app/api.dart';
import 'package:derm_detect_app/constants.dart';
import 'package:derm_detect_app/screens/result_screen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CheckUpScreen extends StatefulWidget {
  const CheckUpScreen({super.key});

  @override
  State<CheckUpScreen> createState() => _CheckUpScreenState();
}

class _CheckUpScreenState extends State<CheckUpScreen> {
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
        child: Padding(
          padding: const EdgeInsets.all(48),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Image.asset('assets/test-img.png')),
              space40,
              space40,
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'SKIN CONDITION ANALYZER',
                    style: TextStyle(fontSize: 56),
                  ),
                  space24,
                  const Divider(),
                  space24,
                  const Text(
                    'Upload affected area images to detect the cancer',
                    style: TextStyle(fontSize: 22),
                  ),
                  space24,
                  DottedBorder(
                    color: Colors.grey.shade400,
                    strokeWidth: 2,
                    child: Container(
                      padding: const EdgeInsets.all(24),
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          const Text(
                            'Drag and Drop Files to Upload\nPNG, JPEG, etc',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          space16,
                          const Row(
                            children: [
                              Expanded(child: Divider()),
                              space8,
                              Text('OR'),
                              space8,
                              Expanded(
                                child: Divider(),
                              )
                            ],
                          ),
                          space16,
                          FilledButton(
                            onPressed: () async {
                              final result = await ImagePicker().pickImage(source: ImageSource.gallery);
                              final bytes = await result!.readAsBytes();
                              predict(bytes, result.name).then((value){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultScreen(bytes: bytes,result: value,)));
                              });
                            },
                            style: const ButtonStyle(
                                foregroundColor:
                                    MaterialStatePropertyAll(onPrimaryColor),
                                backgroundColor:
                                    MaterialStatePropertyAll(primaryColor)),
                            child: const Text('SELECT FILES'),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
