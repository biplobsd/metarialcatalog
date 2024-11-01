import 'package:flutter/material.dart';

class BottomSheetScreen extends StatelessWidget {
  static const path = '/bottomSheet';
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(path),
      ),
      body: Center(
        child: FilledButton.tonal(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => const SizedBox(
                height: 200,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(child: Text("Center of the bottom sheet")),
                ),
              ),
            );
          },
          child: const Text('show a bottom sheet'),
        ),
      ),
    );
  }
}
