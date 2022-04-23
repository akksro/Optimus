import 'package:flutter/material.dart';
import 'package:optimus/resources/resources.dart';
import 'package:optimus/views/pages/home_page.dart';
import 'package:optimus/views/widgets/border_button.dart';
import 'package:optimus/views/widgets/font_button.dart';
import 'package:optimus/views/widgets/input_field.dart';
import 'package:optimus/views/widgets/solid_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle greetinTextStyle = TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
        color: Colours.primaryFont);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.vGap30,
            const Align(
              child: Image(
                image: AssetImage('${Constants.imagePath}/placeholder.png'),
              ),
              alignment: Alignment.center,
            ),
            Gaps.vGap30,
            const Text("Hey there,", style: greetinTextStyle),
            Gaps.vGap5,
            const Text(
              "Please Login into your account",
              style: greetinTextStyle,
            ),
            Gaps.vGap30,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BorderButton(
                  content: "Sign in with google",
                  onClick: () {
                    print("Login with google");
                  },
                  image: "google.svg",
                ),
                Gaps.hGap10,
                BorderButton(
                  content: "Sign in with facebook",
                  onClick: () {
                    print("Login with facebook");
                  },
                  image: "facebook.svg",
                ),
              ],
            ),
            Gaps.vGap20,
            const Align(
              child: Text("OR", style: TextStyle(color: Colours.secondaryFont)),
              alignment: Alignment.center,
            ),
            Gaps.vGap20,
            Column(
              children: [
                const InputField(placeholder: "Enter email Id"),
                Gaps.vGap10,
                const InputField(placeholder: "Enter password"),
                Align(
                  child: FontButton(
                      content: "Forgot Password?",
                      onClick: () {
                        print("Forgot password");
                      },
                      alignment: Alignment.centerRight),
                )
              ],
            ),
            SolidButton(
                content: "Let's get started",
                onClick: () {
                  _goto(context, const HomePage());
                }),
            Gaps.vGap5,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'New to ${Constants.appName}?',
                  style: TextStyle(
                      color: Colours.secondaryFont,
                      fontWeight: FontWeight.w600),
                ),
                FontButton(
                    content: "Register Now!",
                    onClick: () {
                      print("Register Now");
                    },
                    alignment: Alignment.center),
              ],
            )
          ],
        ),
      )),
    );
  }

  _goto(BuildContext mainContext, Widget page) =>
      Navigator.pushReplacement<void, void>(
        mainContext,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => page,
        ),
      );
}
