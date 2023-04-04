import 'package:flutter/material.dart';
import 'package:minimal_ui_two/common_widgets/image_card.dart';

class ImageDetailsCards extends StatelessWidget {
  const ImageDetailsCards({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) {
        return ImageCard(
          imgPath: 'assets/images/background1.jpg',
          content: 'this is content',
          profileImg: 'assets/images/profile1.jpg',
          proTitle: 'Albert ',
          proSubTitle: 'Sciecntist',
        );
      },
    );
  }
}
