import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
  static const String recentPosts = 'Recent Posts';

  // Path
  static const String imagePath = 'assets/images';

  static List<Onboarding> onbording = <Onboarding>[
    Onboarding(
      title: "Find friend not just a roommate!",
      image: '${Constants.imagePath}/roomate-search.png',
      description:
          "What fun could we have more than having a roommate with a similar interest.",
    ),
    Onboarding(
      title: "Looking for a safe space to leave",
      image: '${Constants.imagePath}/apartment-search.png',
      description: "We have ample amount of apartment waiting for you.",
    ),
    Onboarding(
      title: "A whole lot of opportunity to find the right things",
      image: '${Constants.imagePath}/features.png',
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
        image: 'roomate-icon.png'),
    MenuItem(
        title: "Apartment",
        description:
            "Looking for any apartment? or Do you have any apartment?",
        bgColor: Colours.secondary,
        image: 'apartment-icon.png'),
    MenuItem(
        title: "Buy/Sell",
        description:
            "Want to sell something? or Are you looking to buy something?",
        bgColor: Colours.secondary,
        image: 'buy-sell-icon.png'),
    MenuItem(
        title: "New",
        description: "Add some nice description which describe the feature",
        bgColor: Colours.secondary,
        image: 'feature-icon.png')
  ];

  static List<BottomBarMenuItems> bottomBarItems = <BottomBarMenuItems>[
    BottomBarMenuItems(
      title: 'Home',
      activeIcon: SvgPicture.asset('${Constants.imagePath}/home-active-v2.svg',
          semanticsLabel: 'Home', fit: BoxFit.scaleDown),
      inActiveIcon: SvgPicture.asset('${Constants.imagePath}/home-inactive.svg',
          semanticsLabel: 'Home', fit: BoxFit.scaleDown),
    ),
    BottomBarMenuItems(
      title: 'Message',
      activeIcon: SvgPicture.asset(
          '${Constants.imagePath}/message-active-v2.svg',
          semanticsLabel: 'message',
          fit: BoxFit.scaleDown),
      inActiveIcon: SvgPicture.asset(
          '${Constants.imagePath}/message-inactive.svg',
          semanticsLabel: 'message',
          fit: BoxFit.scaleDown),
    ),
    BottomBarMenuItems(
      title: 'Profile',
      activeIcon: SvgPicture.asset(
          '${Constants.imagePath}/profile-active-v2.svg',
          semanticsLabel: 'profile',
          fit: BoxFit.scaleDown),
      inActiveIcon: SvgPicture.asset(
          '${Constants.imagePath}/profile-inactive.svg',
          semanticsLabel: 'profile',
          fit: BoxFit.scaleDown),
    )
  ];
}
