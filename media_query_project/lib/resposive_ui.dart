import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    var _width = _mediaQuery.size.width;
    var _height = _mediaQuery.size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: _height * 0.5,
              color: Colors.orange,
              child: Row(
                children: [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
