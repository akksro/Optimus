import 'package:flutter/material.dart';
import 'package:optimus/resources/colours.dart';

class FontButton extends StatefulWidget {
  final String content;
  final Function onClick;
  final Alignment alignment;
  const FontButton(
      {Key? key,
      required this.content,
      required this.onClick,
      this.alignment = Alignment.center})
      : super(key: key);

  @override
  State<FontButton> createState() => _FontButtonState();
}

class _FontButtonState extends State<FontButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: widget.alignment,
      child: TextButton(
          onPressed: () {
            widget.onClick();
          },
          child: Text(
            widget.content,
            style: const TextStyle(
                color: Colours.primary, fontWeight: FontWeight.w600),
          )),
    );
  }
}
