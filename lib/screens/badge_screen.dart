import 'package:flutter/material.dart';

class BadgeScreen extends StatelessWidget {
  static const path = '/badge';
  const BadgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(path),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Badge(
                label: Text('Notification'),
                child: Icon(Icons.notification_add),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Badge.count(
                count: 11234,
                child: const Icon(Icons.message),
              ),
            )
          ],
        ),
      ),
    );
  }
}
