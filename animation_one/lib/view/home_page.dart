import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Positioned'),
      ),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.red,
        child: Stack(
          children: [
            AnimatedPositioned(
              top: isSelected == true ? 10 : 200,
              // right: isSelected ? 10 : 100,
              // left:isSelected? 0,
              width: isSelected == true ? 50 : 200,
              height: isSelected == true ? 50 : 200,
              curve: Curves.bounceIn,
              duration: const Duration(
                seconds: 2,
              ),
              child: GestureDetector(
                onTap: () {
                  setState(
                    () {
                      isSelected = !isSelected;
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
