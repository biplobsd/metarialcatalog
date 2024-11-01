import 'package:flutter/material.dart';

class AppBarNBottomAppBarScreen extends StatelessWidget {
  static const path = '/appBarNBottomAppBarScreen';
  const AppBarNBottomAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(path),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.heart_broken),
            )
          ],
        ),
      ),
      body: const Center(
        child: Text('AppBar and bottom appBar'),
      ),
    );
  }
}
