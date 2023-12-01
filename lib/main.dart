import 'package:flutter/material.dart';
import 'package:view_pager/page_one.dart';
import 'package:view_pager/page_three.dart';
import 'package:view_pager/page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'VIEW PAGER'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final List<Widget> _pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView.builder(
          scrollDirection: Axis.horizontal,
          reverse: false,
          controller: _pageController,
          itemCount: _pages.length,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
          itemBuilder: (context, index) {
            return _pages[index];
          },
        ),
        buildDotIndicator(),
      ]),
    );
  }

  Widget buildDotIndicator() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          _pages.length,
          (index) => Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == index ? Colors.blue : Colors.grey),
          ),
        ),
      ),
    );
  }
}
