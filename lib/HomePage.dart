import 'package:flutter/material.dart';
import 'main.dart'; // for ScreenArguments

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              'second Page',
              arguments: ScreenArguments("Hello Shimon"),
            );
          },
          child: const Text("Go To Second Screen"),
        ),
      ),
    );
  }
}
