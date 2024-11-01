import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  static const path = '/SnackBar';
  const SnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(path),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Hi, I\'m SnackBar!'),
              ),
            );
          },
          child: const Text('Show SnackBar'),
        ),
      ),
    );
  }
}
