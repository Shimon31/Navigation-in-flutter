import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {

  final String data;

  const SecondPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("$data"),
            ),
          ],
        ),
      ),
    );
  }
}
