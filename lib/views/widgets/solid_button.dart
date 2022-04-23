import 'package:flutter/material.dart';
import 'package:optimus/resources/colours.dart';

class SolidButton extends StatefulWidget {
  final String content;
  final Function onClick;
  final Alignment alignment;
  const SolidButton(
      {Key? key,
      required this.content,
      required this.onClick,
      this.alignment = Alignment.center})
      : super(key: key);

  @override
  State<SolidButton> createState() => _SolidButtonState();
}

class _SolidButtonState extends State<SolidButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: widget.alignment,
      child: ElevatedButton(
        onPressed: () {
          widget.onClick();
        },
        child: Text(
          widget.content,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            minimumSize:
                MaterialStateProperty.all<Size>(const Size.fromHeight(50)),
            backgroundColor: MaterialStateProperty.all<Color>(Colours.primary)),
      ),
    );
  }
}
