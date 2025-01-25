import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("H O M E P A G E"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text("This is the HomePage!"),
      ),
    );
  }
}
