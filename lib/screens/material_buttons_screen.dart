import 'package:flutter/material.dart';

class MaterialButtonsScreen extends StatelessWidget {
  static const path = '/materialButtons';
  const MaterialButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material 3 Buttons'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            const SizedBox(height: 10),
            FilledButton(
              onPressed: () {},
              child: const Text('Filled Button'),
            ),
            const SizedBox(height: 10),
            FilledButton.tonal(
              onPressed: () {},
              child: const Text('Filled Button Tonal'),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            )
          ],
        ),
      ),
    );
  }
}
