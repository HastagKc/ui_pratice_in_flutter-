import 'package:flutter/material.dart';
import 'package:minimal_ui_two/common_widgets/image_card.dart';
import 'package:minimal_ui_two/common_widgets/image_details_cards.dart';
import 'package:minimal_ui_two/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: ImageDetailsCards(),
      /*    home: ImageCard(
        imgPath: 'assets/images/background1.jpg',
        content: 'this is content',
        profileImg: 'assets/images/profile1.jpg',
        proTitle: 'Albert ',
        proSubTitle: 'Sciecntist',
      ), */
    );
  }
}
