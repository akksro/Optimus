import 'package:flutter/material.dart';
import 'package:optimus/resources/colours.dart';

class Appbar {
  static AppBar transaparentAppbar() {
    return AppBar(
      automaticallyImplyLeading: true,
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Colours.primary),
    );
  }
}
