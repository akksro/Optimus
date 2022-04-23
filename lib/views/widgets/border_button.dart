import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:optimus/resources/colours.dart';

class BorderButton extends StatefulWidget {
  final String content;
  final Function onClick;
  final Alignment alignment;
  final double width;
  final String? image;
  const BorderButton(
      {Key? key,
      required this.content,
      required this.onClick,
      required this.width,
      this.image,
      this.alignment = Alignment.center})
      : super(key: key);

  @override
  State<BorderButton> createState() => _BorderButtonState();
}

class _BorderButtonState extends State<BorderButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: widget.alignment,
      child: SizedBox(
        width: widget.width,
        child: OutlinedButton.icon(
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.all(6))),
          label: Text(
            widget.content,
            style: const TextStyle(
                fontSize: 12,
                color: Colours.primaryFont,
                fontWeight: FontWeight.w600),
          ),
          icon: widget.image != null
              ? SvgPicture.asset('assets/images/${widget.image}',
                  semanticsLabel: widget.content, fit: BoxFit.scaleDown)
              : Container(),
          onPressed: () {
            widget.onClick();
          },
        ),
      ),
    );
  }
}
