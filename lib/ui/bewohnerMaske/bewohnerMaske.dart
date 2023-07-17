import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  const InputForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Name',
          style: TextStyle(fontSize: 16.0),
        ),
        TextField(
          decoration: const InputDecoration(
            hintText: 'Enter your name',
          ),
        ),
        const SizedBox(height: 16.0),
        const Text(
          'Vorname',
          style: TextStyle(fontSize: 16.0),
        ),
        TextField(
          decoration: const InputDecoration(
            hintText: 'Enter your first name',
          ),
        ),
        const SizedBox(height: 16.0),
        const Text(
          'Rolle',
          style: TextStyle(fontSize: 16.0),
        ),
        TextField(
          decoration: const InputDecoration(
            hintText: 'Enter your role',
          ),
        ),
      ],
    );
  }
}
