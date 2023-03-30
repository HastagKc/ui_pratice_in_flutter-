import 'package:flutter/material.dart';

class SimpleMinimalDesign extends StatelessWidget {
  const SimpleMinimalDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 253, 193, 64),
              Color.fromARGB(255, 49, 33, 5),
            ],
          ),
        ),
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15.0,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 35.0,
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 35,
                ),
                onPressed: () {},
              ),
            ),
            const Text(
              'Check Vechile Availability ',
              style: TextStyle(
                fontSize: 45.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: "Enter your zip code",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                prefixIcon: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                border: InputBorder.none,
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "We want to ensure the vehicle is aviable in your area for delivery",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 85.0,
            ),
            Image.asset(
              'assets/image/car.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              color: Colors.white,
              height: 0.75,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Been here before ? Already have been eleanor account",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 20,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
