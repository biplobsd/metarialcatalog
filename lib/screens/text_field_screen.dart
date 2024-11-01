import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  static const path = '/textField';
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(TextFieldScreen.path),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Enter your password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: FilledButton.tonal(
                onPressed: () {
                  setState(() {});
                },
                child: const Text("Show name & password"),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(),
            if (nameController.text.isNotEmpty)
              Text('Input name: ${nameController.text}'),
            if (passwordController.text.isNotEmpty)
              Text('Input password: ${passwordController.text}'),
          ],
        ),
      ),
    );
  }
}
