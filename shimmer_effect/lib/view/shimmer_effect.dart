import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffectPage extends StatefulWidget {
  @override
  State<ShimmerEffectPage> createState() => _ShimmerEffectPageState();
}

class _ShimmerEffectPageState extends State<ShimmerEffectPage> {
  var isDataFetch = false;

  @override
  void initState() {
    super.initState();
    fetchingData();
  }

  void fetchingData() {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isDataFetch = true;
      });
    });
  }

  /* isDataFetch = false; */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.red,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Center(
              child: isDataFetch == false
                  ? shimmerEffectWidgets()
                  : Center(
                      child: Text(
                        'Content is here',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget shimmerEffectWidgets() {
    return Shimmer.fromColors(
      baseColor: Color.fromARGB(255, 212, 209, 209),
      highlightColor: Colors.white,
      // loop: 1,

      child: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            ContainerWidget(height: 60),
            const SizedBox(
              height: 20,
            ),
            ContainerWidget(height: 150),
            const SizedBox(
              height: 20,
            ),
            ListiewBuilderList(height: 30, width: 100),
            const SizedBox(
              height: 20,
            ),
            ListiewBuilderList(height: 200, width: 250),
            const SizedBox(
              height: 20,
            ),
            ContainerWidget(height: 30),
            const SizedBox(
              height: 20,
            ),
            ListiewBuilderList(height: 200, width: 200),
          ],
        ),
      ),
    );
  }

  Widget ListiewBuilderList({required double height, required double width}) {
    return Container(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              height: 30,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget ContainerWidget({required double height}) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
