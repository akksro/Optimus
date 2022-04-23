import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:optimus/resources/resources.dart';
import 'package:optimus/views/pages/signin_page.dart';
import 'package:optimus/views/widgets/buttons.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late final PageController _pageController;

  /// State to hold the active screen ibdex
  int _currentPage = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  /// Indicator widget to represent the active screen from the onboarding list
  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < Constants.onbording.length; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        height: 8.0,
        width: isActive ? 28.0 : 10.0,
        decoration: isActive
            ? BoxDecoration(
                color: Colours.primary,
                borderRadius: BorderRadius.circular(100),
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 1, color: Colours.primary)));
  }

  _gotoMainPage() => Navigator.pushReplacement<void, void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const SignInPage(),
        ),
      );

  _gotToNextPage() => _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.dark,
            child: SafeArea(
              child: PageView.builder(
                  itemCount: Constants.onbording.length,
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
                                    Constants.onbording[index].image,
                                  ),
                                  width: width,
                                ),
                              ),
                              Gaps.vGap40,
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: _buildPageIndicator(),
                                ),
                              ),
                              Gaps.vGap10,
                              Center(
                                child: Text(
                                  Constants.onbording[index].title,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colours.primaryFont,
                                    fontFamily: 'CM Sans Serif',
                                    fontSize: 26.0,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Gaps.vGap20,
                              Center(
                                child: Text(
                                  Constants.onbording[index].description,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colours.secondaryFont,
                                    fontFamily: 'Poppins',
                                    fontSize: 18.0,
                                    height: 1.2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            )),
        bottomSheet: _currentPage == Constants.onbording.length - 1
            ? SizedBox(
                height: 120.0,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Buttons.getButton(ButtonType.solid_button,
                      Constants.getStarted, _gotoMainPage,
                      alignment: Alignment.bottomCenter),
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 100,
                      child: Buttons.getButton(ButtonType.text_button,
                          Constants.skip, _gotoMainPage),
                    ),
                    Buttons.getButton(
                        ButtonType.solid_button, Constants.next, _gotToNextPage,
                        customStyle: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colours.primary),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: const BorderSide(
                                        color: Colours.primary))))),
                  ],
                ),
              ));
  }
}
