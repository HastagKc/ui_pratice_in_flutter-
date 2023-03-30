import 'package:flutter/material.dart';

class MediaQueryWidgets extends StatelessWidget {
  const MediaQueryWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

// provide width
    final screenWidth = mediaQueryData.size.width;

    // provide screen height
    final screenHeight = mediaQueryData.size.height;

    // it is an ratio of physical and virtual pixel ratio of an app
    final devicePixelRatio = mediaQueryData.devicePixelRatio;
    // orinetation provide protrait and landscape of the app
    final orientation = mediaQueryData.orientation;
    return Scaffold(
      body: Center(
        child: Container(
          width: screenWidth * 0.8,
          height: screenHeight * 0.5,
          child: Text(
            'Screen width: $screenWidth\nScreen height: $screenHeight\nDevice pixel ratio: $devicePixelRatio\nOrientation: $orientation',
          ),
        ),
      ),
    );
  }
}
