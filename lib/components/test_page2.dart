import 'package:flutter/material.dart';
import 'package:flutter_zenn_transition/components/test_page3.dart';

class TestPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test2"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return TestPage3();
                }))
              },
              child: Text('Page3へ進む', style: TextStyle(fontSize: 30)),
            ),
            TextButton(
              onPressed: () => { Navigator.of(context).pop() },
              child: Text('Page1へ戻る', style: TextStyle(fontSize: 30))
            ),
          ],
        ),
      ),
    );
  }
}
