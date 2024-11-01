import 'package:flutter/material.dart';

class FloatingActionButtonScreen extends StatelessWidget {
  static const path = '/floatingActionButton';
  const FloatingActionButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(path),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: const Center(
        child: Text('Floating Action Button'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const SizedBox(
        height: 50,
        child: BottomAppBar(
          color: Colors.deepPurpleAccent,
        ),
      ),
    );
  }
}
