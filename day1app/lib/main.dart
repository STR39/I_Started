import 'package:day1app/landing_page.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const MyAppp());
}

class MyAppp extends StatefulWidget {
  const MyAppp({super.key});

  @override
  State<MyAppp> createState() => _MyAppState();
}

class _MyAppState extends State<MyAppp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/homepage': (context) => const Homepage(),
      },
      home: const LandingPage(),
    );
  }
}
