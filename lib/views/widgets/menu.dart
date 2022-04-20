import 'package:flutter/material.dart';
import 'package:optimus/models/menuitem.dart';
import 'package:optimus/resources/resources.dart';

class Menu extends StatefulWidget {
  final MenuItem menuItem;
  const Menu({Key? key, required this.menuItem}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        height: 130,
        decoration: BoxDecoration(
          color: widget.menuItem.bgColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  Gaps.vGap30,
                  Text(
                    widget.menuItem.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Gaps.vGap10,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
