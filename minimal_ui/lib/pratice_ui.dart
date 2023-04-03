import 'package:flutter/material.dart';

class PraticeUi extends StatelessWidget {
  const PraticeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 236, 215, 22),
              Color.fromARGB(255, 134, 122, 8),
            ],
          ),
        ),
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 35.5,
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 35.0,
                  ),
                ),
              ),
              const Text(
                "Check Vechile Availability",
                style: TextStyle(
                  fontSize: 55.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter your Zip code',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                  prefixIcon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              const Text(
                "We want to ensure the vechicle are aviable in your location",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 45.0,
              ),
              Image.asset('assets/image/car.png'),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                color: Colors.white,
                height: 1.75,
              ),
              const SizedBox(
                height: 35.0,
              ),
              const Text(
                "Been Here Before ? Already have been eleanor account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                ),
              ),
              const SizedBox(
                height: 35.0,
              ),
              Row(
                children: const [
                  Text(
                    "Sign In ",
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 25.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
