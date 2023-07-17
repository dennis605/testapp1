import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  const InputForm({Key? key}) : super(key: key);

  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _roleController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _firstNameController.dispose();
    _roleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Name',
              style: TextStyle(fontSize: 16.0),
            ),
            TextFormField(
              controller: _nameController,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 3) {
                  return 'Please enter a valid name (at least 3 characters)';
                }
                return null;
              },
              decoration: const InputDecoration(
                hintText: 'Enter your name',
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Vorname',
              style: TextStyle(fontSize: 16.0),
            ),
            TextFormField(
              controller: _firstNameController,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 3) {
                  return 'Please enter a valid first name (at least 3 characters)';
                }
                return null;
              },
              decoration: const InputDecoration(
                hintText: 'Enter your first name',
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Rolle',
              style: TextStyle(fontSize: 16.0),
            ),
            TextFormField(
              controller: _roleController,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 3) {
                  return 'Please enter a valid role (at least 3 characters)';
                }
                return null;
              },
              decoration: const InputDecoration(
                hintText: 'Enter your role',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Do something with the validated input
                  final name = _nameController.text;
                  final firstName = _firstNameController.text;
                  final role = _roleController.text;
                  // ...
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
