import 'package:flutter/material.dart';
import 'package:minimal_ui/pratice_ui.dart';
import 'package:minimal_ui/simple_minimal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter Minimal Design",
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      // home: const SimpleMinimalDesign(),
      home: const PraticeUi(),
    );
  }
}
