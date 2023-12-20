import 'package:derm_detect_app/constants.dart';
import 'package:derm_detect_app/screens/landing_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: const LandingScreen(),
      theme: ThemeData(
        useMaterial3: false,
          colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: primaryColor,
              onPrimary: onPrimaryColor,
              secondary: secondaryColor,
              onSecondary: onSecondaryColor,
              error: Colors.red.shade400,
              onError: Colors.white,
              background: Colors.white,
              onBackground: Colors.black,
              surface: Colors.white,
              onSurface: Colors.black),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: secondaryColor,
            foregroundColor: onSecondaryColor,
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
            shape: const BeveledRectangleBorder()
          )
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: onPrimaryColor,
          )
        ),
        tabBarTheme: const TabBarTheme(
          labelColor: primaryColor,
          labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        dividerTheme:const DividerThemeData(thickness: 1)
      ),
    );
  }
}

void main(List<String> args) {
  runApp(const App());
}
