import 'package:flutter/material.dart';
import 'package:listviewdetails/model/fruit_data.dart';

class DetalisPage extends StatelessWidget {
  final FruitData fruitDataDetails;
  const DetalisPage({super.key, required this.fruitDataDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(fruitDataDetails.name),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 10.0,
          left: 10.0,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(fruitDataDetails.imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Text('\$ ${fruitDataDetails.price}'),
            const SizedBox(
              height: 25.0,
            ),
            Text(
              fruitDataDetails.discription,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
