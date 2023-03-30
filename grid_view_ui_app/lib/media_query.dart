import 'package:flutter/material.dart';

class MediaQueryPr extends StatelessWidget {
  const MediaQueryPr({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 100,
          height: _mediaQuery.size.height * 0.75,
          decoration: const BoxDecoration(
            color: Colors.green,
          ),
        ),
        Container(
          width: 100,
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
