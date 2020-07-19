import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({this.iconData, this.title, this.page});

  final IconData iconData;
  final String title;
  final int page;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        debugPrint('Oi $page');
      },
      child: SizedBox(
        height: 60,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 31),
              child: Icon(
                iconData,
                size: 32,
                color: Color.fromARGB(255, 156, 27, 49),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 156, 27, 49),
              ),
            )
          ],
        ),
      ),
    );
  }
}
