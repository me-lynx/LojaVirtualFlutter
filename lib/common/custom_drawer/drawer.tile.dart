import 'package:flutter/material.dart';
import 'package:loja_virtual_pro/models/page_manager.dart';
import 'package:provider/provider.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({this.iconData, this.title, this.page});

  final IconData iconData;
  final String title;
  final int page;

  @override
  Widget build(BuildContext context) {
    //se for modificar interno, setar como watch
    final int curPage = context.watch<PageManager>().page;

    return InkWell(
      onTap: () {
        context.read<PageManager>().setPage(page);
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
                color: curPage == page
                    ? Color.fromARGB(255, 156, 27, 49)
                    : Colors.grey[700],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: curPage == page
                    ? Color.fromARGB(255, 156, 27, 49)
                    : Colors.grey[700],
              ),
            )
          ],
        ),
      ),
    );
  }
}
