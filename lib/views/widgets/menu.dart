import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:optimus/models/menuitem.dart';
import 'package:optimus/resources/resources.dart';

class Menu extends StatefulWidget {
  final MenuItem menuItem;
  final double width;
  final double height;
  const Menu(
      {Key? key,
      required this.menuItem,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: widget.menuItem.bgColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(15),
              child: Image(
                image: AssetImage('assets/images/${widget.menuItem.image}'),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100)),
            ),
            Gaps.vGap10,
            Text(
              widget.menuItem.title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colours.primaryFont),
            ),
            Gaps.vGap5,
            Text(
              widget.menuItem.description,
              maxLines: 3,
              softWrap: true,
              style:
                  const TextStyle(fontSize: 10, color: Colours.secondaryFont),
            )
          ],
        ),
      ),
    );
  }
}
