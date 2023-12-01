import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PAGE 1"),
      ),
      body: const Center(
        child: Text(
          "1",
          style: TextStyle(fontSize: 64),
        ),
      ),
    );
  }
}
