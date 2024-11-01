import 'package:flutter/material.dart';

class ProgressIndicatorScreen extends StatelessWidget {
  static const path = '/progressIndicator';
  const ProgressIndicatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(path),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 20),
            LinearProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
