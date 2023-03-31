import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    var _width = _mediaQuery.size.width;
    var _height = _mediaQuery.size.height;
    return Scaffold(
      body: Stack(
        children: [
          UpperportionOfHomepage(height: _height),
          LowerportionLayoutHompage(context: context, height: _height),
        ],
      ),
    );
  }
}

class UpperportionOfHomepage extends StatelessWidget {
  const UpperportionOfHomepage({
    super.key,
    required double height,
  }) : _height = height;

  final double _height;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        width: double.infinity,
        height: _height * 0.5,
        decoration: const BoxDecoration(
          color: Colors.orange,
          /*   image: DecorationImage(
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO5AKoejJMkDhzaIVUZYyO1J4N-g9WxfOKPcq-rJ6gq-Ec-d4RubGuG07U-LUDW2ZP-ds&usqp=CAU"),
            fit: BoxFit.cover,
          ), */
          image: DecorationImage(
            image: AssetImage('assets/image/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 15,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextContent(
                      context: context,
                      text: "08",
                      textFontSize: 22,
                    ),
                    TextContent(
                      context: context,
                      text: "June",
                      textFontSize: 20,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextContent(
                      context: context,
                      text: "Kathmandu \nClean City\nTogether",
                      textFontSize: 20,
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 26,
                        top: 10,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/image/icon1.png',
                            width: 30,
                            height: 30,
                            color: Colors.white,
                          ),
                          TextContent(
                            context: context,
                            text: "Kathmandu, Nepal",
                            textFontSize: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

@override
Widget LowerportionLayoutHompage({
  required BuildContext context,
  required double height,
}) {
  return Positioned(
    top: height * 0.5,
    left: 0,
    right: 0,
    bottom: 0,
    child: Container(
      height: height * 0.5,
      /*   height: double.infinity,
      width: double.infinity, */
      // color: Colors.red,

      // creating row
      child: Row(children: [
        Stack(
          children: const [
            Positioned(
              left: 10,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image/avtar.png'),
                radius: 20,
              ),
            ),
            Positioned(
              left: 18,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image/avtar.png'),
                radius: 20,
              ),
            ),
            Positioned(
              left: 20,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image/avtar.png'),
                radius: 20,
              ),
            ),
          ],
        )
      ]),
    ),
  );
}

Widget TextContent({
  required BuildContext context,
  required String text,
  required double textFontSize,
}) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 26,
      top: 10,
    ),
    child: Text(
      text,
      style: TextStyle(
        fontSize: textFontSize,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontFamily: "UbuntuBold",
      ),
      textAlign: TextAlign.start,
    ),
  );
}
