import 'package:flutter/material.dart';
import 'package:optimus/resources/resources.dart';

class FontStyles {
  static TextStyle h1PrimaryStyle = const TextStyle(
      fontSize: 20.0, fontWeight: FontWeight.w500, color: Colours.primaryFont);

  static TextStyle greetingTextStyle = const TextStyle(
      fontSize: 20.0, fontWeight: FontWeight.w500, color: Colours.primaryFont);
}

class Decorations {
  static InputBorder inputBorderDecoration = OutlineInputBorder(
    borderSide: BorderSide(color: Colours.primary.withAlpha(30), width: 2.0),
    borderRadius: BorderRadius.circular(10.0),
  );

  static InputDecoration inputDecoration = InputDecoration(
    contentPadding: const EdgeInsets.all(10),
    enabledBorder: Decorations.inputBorderDecoration,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    fillColor: Colours.textfieldBGColor,
    filled: true,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
    floatingLabelStyle: const TextStyle(color: Colours.primary),
    focusedBorder: Decorations.inputBorderDecoration,
    suffixStyle: const TextStyle(color: Colours.primary, fontSize: 10),
  );
}

class Gaps {
  static Widget hGap5 = const SizedBox(width: Dimens.gap_dp5);
  static Widget hGap10 = const SizedBox(width: Dimens.gap_dp10);
  static Widget hGap15 = const SizedBox(width: Dimens.gap_dp15);
  static Widget hGap20 = const SizedBox(width: Dimens.gap_dp20);
  static Widget hGap30 = const SizedBox(width: Dimens.gap_dp30);
  static Widget hGap40 = const SizedBox(width: Dimens.gap_dp40);

  static Widget vGap5 = const SizedBox(height: Dimens.gap_dp5);
  static Widget vGap10 = const SizedBox(height: Dimens.gap_dp10);
  static Widget vGap15 = const SizedBox(height: Dimens.gap_dp15);
  static Widget vGap20 = const SizedBox(height: Dimens.gap_dp20);
  static Widget vGap30 = const SizedBox(height: Dimens.gap_dp30);
  static Widget vGap40 = const SizedBox(height: Dimens.gap_dp40);
}
