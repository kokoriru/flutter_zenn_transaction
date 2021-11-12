import 'package:flutter/material.dart';

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
                Navigator.pushNamed(context, '/test3')
              },
              child: Text('Page3へ進む', style: TextStyle(fontSize: 30)),
            ),
            TextButton(
              onPressed: () => { Navigator.popUntil(context, ModalRoute.withName('/test1')) },
              child: Text('Page1へ戻る', style: TextStyle(fontSize: 30))
            ),
          ],
        ),
      ),
    );
  }
}
