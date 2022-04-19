import 'package:optimus/models/models.dart';

class Constants {
  // General Stirngs
  static const String appName = 'Optimus';
  static const String ok = 'OK';
  static const String cancel = 'Cancel';
  static const String next = 'Next';
  static const String skip = 'Skip';
  static const String getStarted = 'Get Started';

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
}
