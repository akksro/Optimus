import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBarMenuItems {
  String title;
  SvgPicture activeIcon;
  SvgPicture inActiveIcon;

  BottomBarMenuItems({
    required this.title,
    required this.activeIcon,
    required this.inActiveIcon,
  });
}
