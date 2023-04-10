import 'package:flutter/material.dart';
import 'package:listviewdetails/model/fruit_data.dart';
import 'package:listviewdetails/view/details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview App'),
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: fruits.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 5.0,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Image(
                      image: NetworkImage(
                        fruits[index].imgUrl,
                      ),
                    ),
                  ),
                  title: Text(fruits[index].name),
                  subtitle: Text(' \$ ${fruits[index].price}'),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetalisPage(
                          fruitDataDetails: fruits[index],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
