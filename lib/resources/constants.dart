import 'package:flutter/material.dart';
import 'package:optimus/models/bottombarmenuitems.dart';
import 'package:optimus/models/menuitem.dart';
import 'package:optimus/models/models.dart';
import 'package:optimus/resources/colours.dart';

class Constants {
  // General Stirngs
  static const String appName = 'Optimus';
  static const String ok = 'OK';
  static const String cancel = 'Cancel';
  static const String next = 'Next';
  static const String skip = 'Skip';
  static const String getStarted = 'Get Started';
  static const String greeting = 'Good Day';
  static const String greetingMessage =
      'Some message to user, which should inspire him/her to use the application';
  static const String serviceWeProvide = 'Experience our top services';

  // Path
  static const String imagePath = 'assets/images';

  static List<Onboarding> onbording = <Onboarding>[
    Onboarding(
      title: "Find friend not just a roommate!",
      image: '${Constants.imagePath}/sample.png',
      description:
          "What fun could we have more than having a roommate with a similar interest.",
    ),
    Onboarding(
      title: "Looking for a safe space to leave",
      image: '${Constants.imagePath}/FadeCircle.png',
      description: "We have ample amount of apartment waiting for you.",
    ),
    Onboarding(
      title: "A whole lot of opportunity to find the right things",
      image: '${Constants.imagePath}/FadeCircle.png',
      description:
          "Provide affordable deals. Discover, chat, reach and settle in a breeze.",
    )
  ];

  static List<MenuItem> menuItems = <MenuItem>[
    MenuItem(
        title: "Roomates",
        description:
            "Are you finding for any roomates? or Looking for any roomates?",
        bgColor: Colours.secondary,
        image: 'roommates.svg'),
    MenuItem(
        title: "Apartment",
        description:
            "Are you finding for any apartment? or Do you have any apartment?",
        bgColor: Colours.secondary,
        image: 'apartment.svg'),
    MenuItem(
        title: "Buy / Sell item",
        description:
            "Do you want to sell your item? or Are you looking to buy some item?",
        bgColor: Colours.secondary,
        image: 'buy-sell.svg'),
    MenuItem(
        title: "New Feature",
        description: "Add some nice description which describe the feature",
        bgColor: Colours.secondary,
        image: 'icon-placeholder.svg')
  ];

  static List<BottomBarMenuItems> bottomBarItems = <BottomBarMenuItems>[
    BottomBarMenuItems(
        title: 'Home',
        activeIcon: const Image(
          image: AssetImage('${Constants.imagePath}/home-active-v2.png'),
        ),
        inActiveIcon: const Image(
          image: AssetImage('${Constants.imagePath}/home-inactive.png'),
        )),
    BottomBarMenuItems(
        title: 'Message',
        activeIcon: const Image(
          image: AssetImage('${Constants.imagePath}/message-active-v2.png'),
        ),
        inActiveIcon: const Image(
          image: AssetImage('${Constants.imagePath}/message-inactive.png'),
        )),
    BottomBarMenuItems(
        title: 'Profile',
        activeIcon: const Image(
          image: AssetImage('${Constants.imagePath}/profile-active-v2.png'),
        ),
        inActiveIcon: const Image(
          image: AssetImage('${Constants.imagePath}/profile-inactive.png'),
        ))
  ];
}
