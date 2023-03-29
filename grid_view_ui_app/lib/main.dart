import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grid_view_ui_app/columnRow.dart';
import 'package:grid_view_ui_app/container_widget.dart';

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
        body: ContainerWidgets(),
        /*    body: Container(
          margin: const EdgeInsets.all(10),
          // child: courseLayout(context),
          // child: masonaryLayout(context),
          // child: alignedLayout(context),
          // child: quiltedLayout(context),

          // child: const RowColumn(),
          child: const ContainerWidgets(),
        ), */
      ),
    );
  }

//masonryGridView.builder
  Widget masonaryLayout(BuildContext context) {
    return MasonryGridView.builder(
      // scrollDirection: Axis.horizontal,
      crossAxisSpacing: 21,
      mainAxisSpacing: 30,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemCount: imageList.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset('assets/image/${imageList[index]}'),
        );
      },
    );
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

// aligned layout
  Widget alignedLayout(BuildContext context) {
    return AlignedGridView.count(
      // scrollDirection: Axis.horizontal,
      /*   crossAxisSpacing: 21,
      mainAxisSpacing: 30, */
      crossAxisCount: 2,
      itemCount: imageList.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/image/${imageList[index]}',
              fit: BoxFit.contain,
            ),
          ),
        );
      },
    );
  }

  // Widget quiltedLayout(BuildContext context) {
  //   return GridView.custom(
  //     gridDelegate: SliverQuiltedGridDelegate(
  //       crossAxisCount: 2,
  //       /*   mainAxisSpacing: 4,
  //       crossAxisSpacing: 4, */
  //       // repeatPattern: QuiltedGridRepeatPattern.inverted,
  //       pattern: [
  //         QuiltedGridTile(1, 0),
  //         QuiltedGridTile(0, 1),
  //         QuiltedGridTile(0, 1),
  //         QuiltedGridTile(0, 1),
  //         QuiltedGridTile(0, 1),
  //         QuiltedGridTile(0, 1),
  //         QuiltedGridTile(0, 1),
  //       ],
  //     ),
  //     childrenDelegate: SliverChildBuilderDelegate(
  //       (context, index) {
  //         return ClipRRect(
  //           borderRadius: BorderRadius.circular(12),
  //           child: Image.asset('assets/image/${imageList[index]}'),
  //         );
  //       },
  //     ),
  //   );
  // }
}
