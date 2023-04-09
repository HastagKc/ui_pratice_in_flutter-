import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffectPage extends StatefulWidget {
  @override
  State<ShimmerEffectPage> createState() => _ShimmerEffectPageState();
}

class _ShimmerEffectPageState extends State<ShimmerEffectPage> {
  @override
  Widget build(BuildContext context) {
    bool isDataFetch = false;

    @override
    void initState() {
      super.initState();

      Future.delayed(Duration(seconds: 2), () {
        setState(() {
          isDataFetch = true;
        });
      });
    }

    return Scaffold(
      body: Container(
        // color: Colors.red,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Center(
              child: isDataFetch == false
                  ? shimmerEffectWidgets()
                  : const Center(
                      child: Text('Content is here'),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget shimmerEffectWidgets() {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.black,
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Center(
              child: Container(
                height: 60,
                // color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
