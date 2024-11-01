import 'package:flutter/material.dart';

class ListTileScreen extends StatelessWidget {
  static const path = '/listTile';
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(path),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(10, (index) => index * 5).map((e) {
            final iconData = IconData(
              int.parse('0xe$e'),
            );
            return ListTile(
              leading: Icon(
                iconData,
              ),
              title: Text(
                e.toString(),
              ),
              subtitle: Text(iconData.toString()),
            );
          }).toList(),
        ),
      ),
    );
  }
}
