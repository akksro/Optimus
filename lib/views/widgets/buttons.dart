// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:optimus/resources/colours.dart';

enum ButtonType { solid_button, text_button, outline_button }

// This is a factory class for generating the button
class Buttons {
  static getButton(ButtonType type, String content, Function onClick,
      {double? width, String? image, Alignment? alignment, ButtonStyle? customStyle}) {
    Widget widget;
    switch (type) {
      case ButtonType.solid_button:
        widget = SolidButton.button(content, onClick, customStyle: customStyle);
        break;
      case ButtonType.text_button:
        widget = FontButton.button(content, onClick);
        break;
      case ButtonType.outline_button:
        widget = OutlineButton.button(content, onClick, width!, image: image);
        break;
    }
    return alignment != null ? alignedWidget(alignment, widget) : widget;
  }
}

class OutlineButton {
  static button(String content, Function onClick, double width,
      {String? image}) {
    return SizedBox(
      width: width,
      child: OutlinedButton.icon(
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.all(6))),
        label: Text(
          content,
          style: const TextStyle(
              fontSize: 12,
              color: Colours.primaryFont,
              fontWeight: FontWeight.w600),
        ),
        icon: image != null
            ? SvgPicture.asset('assets/images/$image',
                semanticsLabel: content, fit: BoxFit.scaleDown)
            : Container(),
        onPressed: () {
          onClick();
        },
      ),
    );
  }
}

class FontButton {
  static button(String content, Function onClick) {
    return TextButton(
        onPressed: () {
          onClick();
        },
        child: Text(
          content,
          style: const TextStyle(
              color: Colours.primary, fontWeight: FontWeight.w600),
        ));
  }
}

class SolidButton {
  static button(String content, Function onClick, {ButtonStyle? customStyle}) {
    return ElevatedButton(
      onPressed: () {
        onClick();
      },
      child: Text(
        content,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
      style: customStyle ?? ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          minimumSize:
              MaterialStateProperty.all<Size>(const Size.fromHeight(50)),
          backgroundColor: MaterialStateProperty.all<Color>(Colours.primary)),
    );
  }
}

Widget alignedWidget(Alignment alignment, Widget widget) {
  return Align(
    alignment: alignment,
    child: widget,
  );
}
