import 'package:flutter/material.dart';

import 'ui/bewohnerMaske/bewohnerMaske.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return  MaterialApp(
    title: 'Material App',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: HomePage(),
  );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
    title: const Text('Los geht es'),
    ),
    body: Column(
      children: [
        const Center(
        child: Text('Hello World'),
        
        ),
        InputForm(),
      ],
    ),
  );
  }
}