import 'package:flutter/material.dart';

class AsyncProgramPage extends StatefulWidget {
  const AsyncProgramPage({super.key});

  @override
  State<AsyncProgramPage> createState() => _AsyncProgramPageState();
}

class _AsyncProgramPageState extends State<AsyncProgramPage> {
  String text = 'Nothing change';
  @override
  Widget build(BuildContext context) {
    initState() {
      super.initState();
    }

    // creating a method

    void methodTwo() {
      print('callig methodtwo');
    }

    void funOne() {
      print('first');
      text = 'first';
      Future.delayed(Duration(seconds: 4), () {
        methodTwo();
      });

      print('Third ');
      print('Fourth');
      print('Fifth');
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          funOne();
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
