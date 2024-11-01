import 'package:flutter/material.dart';

class DialogScreen extends StatelessWidget {
  static const path = '/dialog';
  const DialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(path),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                content: const Text('Description of the alert dialog'),
                title: const Text("Alert Dialog"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close'),
                  )
                ],
              ),
            );
          },
          child: const Text("Show a dialog alert"),
        ),
      ),
    );
  }
}
