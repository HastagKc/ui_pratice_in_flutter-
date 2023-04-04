import 'package:flutter/material.dart';
import 'package:minimal_ui_two/common_widgets/image_details_cards.dart';
import 'package:minimal_ui_two/common_widgets/profile_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Explore',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        leading: const Icon(
          Icons.menu,
          size: 28.0,
          color: Colors.black,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 10.0,
            ),
            child: Icon(
              Icons.search,
              size: 28.0,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
        ),
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Container(
            height: 125.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadiusDirectional.circular(35.0),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          size: 42.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const Text('Add To'),
                  ],
                ),
                //! calling profilecard class
                ProfileCard(
                  imgPath: 'assets/images/profile1.jpg',
                  available: true,
                  name: 'Albert Einstein',
                ),
                ProfileCard(
                  imgPath: 'assets/images/profile2.jpg',
                  available: false,
                  name: 'Harry',
                ),
                ProfileCard(
                  imgPath: 'assets/images/profile3.jpg',
                  available: false,
                  name: 'Mark Zuckerberg',
                ),
                ProfileCard(
                  imgPath: 'assets/images/profile4.jpg',
                  available: false,
                  name: 'Messi',
                ),
                ProfileCard(
                  imgPath: 'assets/images/profile5.jpg',
                  available: true,
                  name: 'Neymar',
                ),
                ProfileCard(
                  imgPath: 'assets/images/profile6.jpg',
                  available: false,
                  name: 'Petter Hacker',
                ),
                ProfileCard(
                  imgPath: 'assets/images/profile7.jpg',
                  available: false,
                  name: 'Joker',
                ),
              ],
            ),
          ),
          Text("this is text"),
        ],
      ),
    );
  }
}
