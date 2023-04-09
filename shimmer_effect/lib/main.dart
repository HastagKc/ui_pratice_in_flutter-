import 'package:flutter/material.dart';
import 'package:shimmer_effect/view/async_program.dart';
import 'package:shimmer_effect/view/shimmer_effect.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShimmerEffectPage(),
      // home: AsyncProgramPage(),
    );
  }
}
