import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:optimus/resources/resources.dart';
import 'package:optimus/views/pages/dashboard_page.dart';
import 'package:optimus/views/pages/message_page.dart';
import 'package:optimus/views/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  List pages = [
    const DashboardPage(),
    const MessagePage(),
    const ProfilePage()
  ];

  void onTap(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: pages[currentPageIndex],
        bottomNavigationBar: BottomNavigationBarV1(displayWidth));
  }

  // ignore: non_constant_identifier_names
  Widget BottomNavigationBarV1(double displayWidth) {
    return Container(
      margin: EdgeInsets.all(displayWidth * .05),
      height: displayWidth * .130,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colours.primary.withOpacity(.1),
            blurRadius: 30,
            offset: const Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.circular(50),
      ),
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            setState(() {
              currentPageIndex = index;
              HapticFeedback.lightImpact();
            });
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Stack(
            children: [
              BottomBarItem(
                  width: index == currentPageIndex
                      ? displayWidth * .36
                      : displayWidth * .27,
                  child: BottomBarItem(
                    width: index == currentPageIndex ? displayWidth * .32 : 0,
                    height: index == currentPageIndex ? displayWidth * .1 : 0,
                    boxdeCoration: BoxDecoration(
                      color: index == currentPageIndex
                          ? Colours.primary
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  alignment: Alignment.center),
              BottomBarItem(
                  child: Row(
                    children: [
                      AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastLinearToSlowEaseIn,
                        width:
                            index == currentPageIndex ? displayWidth * .060 : 30,
                      ),
                      index == currentPageIndex
                          ? Constants.bottomBarItems[index].activeIcon
                          : Constants.bottomBarItems[index].inActiveIcon,
                      AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastLinearToSlowEaseIn,
                        width:
                            index == currentPageIndex ? displayWidth * .030 : 0,
                      ),
                      AnimatedOpacity(
                        opacity: index == currentPageIndex ? 1 : 0,
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastLinearToSlowEaseIn,
                        child: Text(
                          index == currentPageIndex
                              // ignore: unnecessary_string_interpolations
                              ? '${Constants.bottomBarItems[index].title}'
                              : '',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  AnimatedContainer BottomBarItem(
      {double? width,
      Widget? child,
      double? height,
      AlignmentGeometry? alignment,
      Decoration? boxdeCoration}) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.fastLinearToSlowEaseIn,
      width: width,
      height: height,
      alignment: alignment,
      child: child,
      decoration: boxdeCoration,
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.message,
    Icons.person_rounded,
  ];

  List<String> listOfStrings = [
    'Home',
    'Message',
    'Profile',
  ];
}
