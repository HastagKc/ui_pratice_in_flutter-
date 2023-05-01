import 'package:firebase_curd/pages/firebase_page.dart';
import 'package:firebase_curd/screens/home_page.dart';
import 'package:firebase_curd/screens/table_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      // home: TablePage(),
      home: FirebasePage(),
    );
  }
}
