import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // creating a list of items of assets image
  List<String> imageList = [
    'c++.png',
    'css.png',
    'dart.png',
    'go.png',
    'html.png',
    'java.png',
    'js.png',
    'kotlin.png',
    'python.png',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          // child: courseLayout(context),
          child: masonaryLayout(context),
        ),
      ),
    );
  }

//masonryGridView.builder
  Widget masonaryLayout(BuildContext context) {
    return MasonryGridView.builder(
        // scrollDirection: Axis.horizontal,
        gridDelegate:
            SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset('assets/image/${imageList[index]}'),
          );
        });
  }

// masonryGridView.count
  // Widget courseLayout(BuildContext context) {
  //   return MasonryGridView.count(
  //     crossAxisCount: 2,
  //     itemCount: imageList.length,
  //     itemBuilder: (context, index) {
  //       return ClipRRect(
  //         borderRadius: BorderRadius.circular(12),
  //         child: Image.asset('assets/image/${imageList[index]}'),
  //       );
  //     },
  //   );
  // }
}
