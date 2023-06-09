import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ras Chat'),
      ),
      body: Column(children: const [
        Center(
          child: Text("Welcome to Ras Chat"),
        )
      ]),
    );
  }
}
