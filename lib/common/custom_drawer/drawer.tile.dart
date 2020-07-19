import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  DrawerTile({this.iconData, this.title});

  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          iconData,
          size: 32,
          color: Color.fromARGB(255, 156, 27, 49),
        ),
        const SizedBox(
          width: 25,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 156, 27, 49),
          ),
        )
      ],
    );
  }
}
