import 'package:flutter/material.dart';

class NavigateToScreen {
  static push(BuildContext context, Widget page) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );

  static pushAndReplace(BuildContext mainContext, Widget page) =>
      Navigator.pushReplacement<void, void>(
        mainContext,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => page,
        ),
      );

  static pushAndRemove(BuildContext mainContext, Widget page) =>
      Navigator.pushAndRemoveUntil(
          mainContext,
          MaterialPageRoute(builder: (BuildContext context) => page),
          (Route<dynamic> route) => false);

  static pop(BuildContext mainContext) =>
      Navigator.pop(mainContext);
}
