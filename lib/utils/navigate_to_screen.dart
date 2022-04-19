import 'package:flutter/material.dart';

class NavigateToScreen {
  static navigateTo(BuildContext context, Widget screen) =>
      Navigator.pushReplacement<void, void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => screen,
        ),
      );
}
