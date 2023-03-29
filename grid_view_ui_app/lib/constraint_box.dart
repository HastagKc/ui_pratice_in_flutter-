import 'package:flutter/material.dart';

class ConstraintBoxWidgets extends StatelessWidget {
  const ConstraintBoxWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
        constraints: const BoxConstraints(
          maxHeight: 300,
          minHeight: 100,
          minWidth: 100,
          maxWidth: 300,
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'GetX is a popular lightweight framework for Flutter that offers state management, dependency injection, and routing solutions. It is designed to make Flutter development faster, easier, and more productive. Here are some of the features and benefits of using GetX in your Flutter projects:',
            style: TextStyle(
              fontSize: 12,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
