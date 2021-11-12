import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_zenn_transition/components/test_page1.dart';
import 'package:flutter_zenn_transition/components/test_page2.dart';
import 'package:flutter_zenn_transition/components/test_page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/test1',
      routes: {
        "/test1": (context) => TestPage1(),
        "/test2": (context) => TestPage2(),
        "/test3": (context) => TestPage3(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: TestPage1());
  }
}
