import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:optimus/views/pages/dashboard.dart';
import '../../models/models.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Onboarding> screens = <Onboarding>[
    Onboarding(
        title: "Find friend not just a roommate!",
        image: 'assets/images/sample.png',
        description:
            "What fun could we have more than having a roommate with a similar interest.",
        background: Colors.white),
    Onboarding(
        title: "Looking for a safe space to leave",
        image: 'assets/images/FadeCircle.png',
        description: "We have ample amount of apartment waiting for you.",
        background: Colors.white),
    Onboarding(
        title: "A whole lot of opportunity to find the right things",
        image: 'assets/images/FadeCircle.png',
        description:
            "Provide affordable deals. Discover, chat, reach and settle in a breeze.",
        background: Colors.white)
  ];

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < screens.length; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        height: 8.0,
        width: isActive ? 24.0 : 16.0,
        decoration: isActive
            ? BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100),
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 1, color: Colors.black)));
  }

  _gotoDashboard() => Navigator.pushReplacement<void, void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const Dashboard(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.dark,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: PageView.builder(
                    itemCount: screens.length,
                    controller: _pageController,
                    physics: const ClampingScrollPhysics(),
                    onPageChanged: (int index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (_, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Center(
                                  child: Image(
                                    image: AssetImage(
                                      screens[index].image,
                                    ),
                                    height: 250.0,
                                    width: 250.0,
                                  ),
                                ),
                                const SizedBox(height: 40.0),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: _buildPageIndicator(),
                                  ),
                                ),
                                const SizedBox(height: 10.0),
                                Center(
                                  child: Text(
                                    screens[index].title,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'CM Sans Serif',
                                      fontSize: 26.0,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20.0),
                                Center(
                                  child: Text(
                                    screens[index].description,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Poppins',
                                      fontSize: 18.0,
                                      height: 1.2,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            )),
        bottomSheet: _currentPage == screens.length - 1
            ? SizedBox(
                height: 100.0,
                width: double.infinity,
                child: GestureDetector(
                  child: Center(
                    child: ElevatedButton(
                        child: const Text("Get Started"),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: const BorderSide(
                                        color: Colors.black)))),
                        onPressed:  _gotoDashboard,
                      ),
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: _gotoDashboard,
                        child: const Text(
                          "Skip",
                          style: TextStyle(color: Colors.black),
                        )),
                    ElevatedButton(
                      child: const Text("Next"),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: const BorderSide(
                                          color: Colors.black)))),
                      onPressed: () {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                    ),
                  ],
                ),
              ));
  }
}
