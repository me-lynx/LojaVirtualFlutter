import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      //impede o scroll através de gestos
      physics: const NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
            // AppBar(
            //   const Text('Home'),
            // ),
            ),
        Container(
          color: Color.fromARGB(255, 156, 27, 49),
        ),
        Container(
          color: Colors.cyan,
        ),
        Container(
          color: Colors.deepOrangeAccent,
        ),
      ],
    );
  }
}
