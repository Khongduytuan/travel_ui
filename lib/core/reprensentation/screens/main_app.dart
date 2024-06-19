import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  static const routeName = 'main_app';

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Text("My App"),
      ),
    );
  }
}