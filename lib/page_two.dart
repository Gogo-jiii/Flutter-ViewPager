import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PAGE 2"),
      ),
      body: const Center(
        child: Text(
          "2",
          style: TextStyle(fontSize: 64),
        ),
      ),
    );
  }
}
