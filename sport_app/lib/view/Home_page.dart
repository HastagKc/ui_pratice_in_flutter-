import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        /*    padding: const EdgeInsets.only(right: 8.0, left: 8.0), */
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Container(
              // padding: const EdgeInsets.all(0.0),
              height: 60,
              // color: Colors.green,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Stack(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(1.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              maxRadius: 60.0,
                              child: Padding(
                                padding: EdgeInsets.all(2.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  maxRadius: 40.0,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3p6xaDjCMf2L37aEVU7R8gcTy5muw7601uA&usqp=CAU'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              'Welcome back',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                            Text(
                              'John',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      /*  margin: const EdgeInsets.only(
                        right: 10.0,
                      ), */
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0.5,
                            blurRadius: 1.0,
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.notification_add,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
