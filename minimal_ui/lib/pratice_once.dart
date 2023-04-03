import 'package:flutter/material.dart';

class PraticeAgain extends StatelessWidget {
  const PraticeAgain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(255, 235, 59, 1),
              Color.fromRGBO(255, 155, 49, 1),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 25.0,
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.close,
                    size: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              const Text(
                'Check Vechile Availablility',
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  /*  label: Text(
                    'Enter your Zip code',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ), */
                  hintText: 'Enter your code',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                  border: InputBorder.none,
                  focusColor: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'We want to ensure the vechile in your area for delivery',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
              const SizedBox(
                height: 45.0,
              ),
              Image.asset('assets/image/car.png'),
              const SizedBox(
                height: 45.0,
              ),
              Container(
                color: Colors.white,
                height: 1.5,
              ),
              const SizedBox(
                height: 25.0,
              ),
              const Text(
                'Been here before ? Already have been enroll account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                ),
              ),
              const SizedBox(
                height: 55.0,
              ),
              Row(
                children: const [
                  Text(
                    'Sign In ',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 22.0,
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
