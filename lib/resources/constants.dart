import 'package:flutter/material.dart';
import 'package:optimus/models/menuitem.dart';
import 'package:optimus/models/models.dart';

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
  static const String serviceWeProvide = 'Services we provide';

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
        bgColor: const Color(0xfffdedd2),
        icon: Icons.room),
    MenuItem(
        title: "Apartment",
        description:
            "Are you finding for any apartment? or Do you have any apartment?",
        bgColor: const Color(0xffD1FBEA),
        icon: Icons.house),
    MenuItem(
        title: "Buy / Sell item",
        description:
            "Do you want to sell your item? or Are you looking to buy some item?",
        bgColor: const Color(0xffE2D5FE),
        icon: Icons.sell),
    MenuItem(
        title: "New Feature",
        description: "Add some nice description which describe the feature",
        bgColor: const Color(0xffC1E3FE),
        icon: Icons.new_label)
  ];
}
