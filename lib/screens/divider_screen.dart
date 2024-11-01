import 'package:flutter/material.dart';

class DividerScreen extends StatelessWidget {
  static const path = '/divider';
  const DividerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(path),
      ),
      body: const Column(
        children: [
          Text('Line 1'),
          Divider(),
          Text('Line 2'),
          Divider(
            height: 20,
            indent: 20,
          ),
          Text('Line 3'),
          Divider(
            height: 20,
            endIndent: 20,
          ),
        ],
      ),
    );
  }
}
