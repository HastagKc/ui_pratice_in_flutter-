import 'package:flutter/material.dart';

class ContainerWidgets extends StatelessWidget {
  const ContainerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        /*   width: 200,
        height: 200, */
        constraints: const BoxConstraints(
          minHeight: 200,
          minWidth: 200,
          maxHeight: 300,
          maxWidth: 300,
        ),
        // alignment center align items in center
        alignment: Alignment.center,
        /*    margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20), */

        foregroundDecoration: const BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              spreadRadius: 2,
              offset: Offset(2, 2),
              blurStyle: BlurStyle.normal,
            ),
          ],
        ),
        /*  decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 5,
              spreadRadius: 2,
              // offset: Offset(horizontal,vertical);
              offset: const Offset(3, 2),
            ),
          ],
        ), */
        /*   child: const Text(
          'This is container ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ), */
      ),
    );
  }
}
