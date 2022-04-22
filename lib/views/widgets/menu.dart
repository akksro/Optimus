import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        height: 160,
        decoration: BoxDecoration(
          color: widget.menuItem.bgColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50,
                width: 50,
                child: SvgPicture.asset(
                    'assets/images/${widget.menuItem.image}',
                    semanticsLabel: widget.menuItem.title,
                    fit: BoxFit.scaleDown),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
              ),
              Gaps.vGap20,
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
      ),
    );
  }
}
