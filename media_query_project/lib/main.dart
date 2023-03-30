import 'package:flutter/material.dart';
import 'package:media_query_project/media_query.dart';
import 'package:media_query_project/resposive_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Media Query App",
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      // home: const MediaQueryWidgets(),
      home: const ResponsiveLayout(),
    );
  }
}
