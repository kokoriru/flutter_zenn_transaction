import 'package:flutter/material.dart';

class TestPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test1'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => {
            Navigator.pushNamed(context, '/test2')
          },
          child: Text('Page2へ進む', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
