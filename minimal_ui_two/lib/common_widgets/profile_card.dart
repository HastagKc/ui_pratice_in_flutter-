import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  String imgPath;
  String name;
  bool available;
  ProfileCard({
    super.key,
    required this.imgPath,
    required this.name,
    required this.available,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 5.0,
        right: 5.0,
      ),
      child: Column(
        children: [
          Container(
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35.0),
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              Text(name),
              const SizedBox(width: 4.0),
              available
                  ? Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.green,
                      ),
                    )
                  : Container(),
            ],
          ),
        ],
      ),
    );
  }
}
