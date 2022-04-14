import 'package:flutter/widgets.dart';
import 'colours.dart';
import 'dimes.dart';

class TextStyles {
  static TextStyle listTitle = const TextStyle(
    fontSize: Dimens.font_sp16,
    color: Colours.text_dark,
    fontWeight: FontWeight.bold,
  );
  static TextStyle listContent = const TextStyle(
    fontSize: Dimens.font_sp14,
    color: Colours.text_normal,
  );
  static TextStyle listExtra = const TextStyle(
    fontSize: Dimens.font_sp12,
    color: Colours.text_gray,
  );
}

class Decorations {
  static Decoration bottom = const BoxDecoration(
      border: Border(bottom: BorderSide(width: 0.33, color: Colours.divider)));
}

class Gaps {
  static Widget hGap5 = const SizedBox(width: Dimens.gap_dp5);
  static Widget hGap10 = const SizedBox(width: Dimens.gap_dp10);
  static Widget hGap15 = const SizedBox(width: Dimens.gap_dp15);

  static Widget vGap5 = const SizedBox(height: Dimens.gap_dp5);
  static Widget vGap10 = const SizedBox(height: Dimens.gap_dp10);
  static Widget vGap15 = const SizedBox(height: Dimens.gap_dp15);
}
