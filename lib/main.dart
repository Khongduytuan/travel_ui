import 'package:flutter/material.dart';
import 'package:travel_ui/core/constants/color_constants.dart';
import 'package:travel_ui/core/reprensentation/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel UI',
      theme: ThemeData(
        primaryColor: ColorPalette.primaryColor,
        scaffoldBackgroundColor: ColorPalette.backgroundScaffoldColor,
      ),
      home: const SplashScreen(),
    );
  }
}


