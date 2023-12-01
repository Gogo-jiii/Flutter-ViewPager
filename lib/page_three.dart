import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PAGE 3"),
      ),
      body: const Center(
        child: Text(
          "3",
          style: TextStyle(fontSize: 64),
        ),
      ),
    );
  }
}
