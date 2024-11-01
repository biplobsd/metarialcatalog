import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  static const path = '/card';
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(path),
      ),
      body: const Center(
        child: SizedBox(
          height: 200,
          width: 400,
          child: Card(
            elevation: 20,
            child: Center(
              child: Text("Card"),
            ),
          ),
        ),
      ),
    );
  }
}
