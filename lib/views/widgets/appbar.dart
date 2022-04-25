import 'package:flutter/material.dart';
import 'package:optimus/resources/colours.dart';

class Appbar {
  static AppBar transaparentAppbar({String? title}) {
    return AppBar(
      title: Text(title ?? '') ,
      titleTextStyle: const TextStyle(color: Colours.primary),
      automaticallyImplyLeading: true,
      elevation: 0,
      backgroundColor: Colours.primaryBG,
      iconTheme: const IconThemeData(color: Colours.primary),
    );
  }
}
