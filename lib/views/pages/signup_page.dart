import 'package:flutter/material.dart';
import 'package:optimus/resources/colours.dart';
import 'package:optimus/resources/constants.dart';
import 'package:optimus/resources/styles.dart';
import 'package:optimus/utils/navigate_to_screen.dart';
import 'package:optimus/views/pages/home_page.dart';
import 'package:optimus/views/widgets/buttons.dart';
import 'package:optimus/views/widgets/inputs.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width - 60;
    return Scaffold(
      body: SafeArea(
          child: Center(
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
              Text("Let’s start,", style: FontStyles.greetingTextStyle),
              Gaps.vGap5,
              Text(
                "Creation of your account",
                style: FontStyles.greetingTextStyle,
              ),
              Gaps.vGap30,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Buttons.getButton(
                      ButtonType.outline_button, "Login with google", () {
                    print("Login with google");
                  }, width: size / 2, image: "google.svg"),
                  Gaps.hGap10,
                  Buttons.getButton(
                      ButtonType.outline_button, "Login with facebook", () {
                    print("Login with facebook");
                  }, width: size / 2, image: "facebook.svg")
                ],
              ),
              Gaps.vGap20,
              Column(
                children: [
                  Inputs.getTextField(InputType.email, "Enter name", ""),
                  Gaps.vGap15,
                  Inputs.getTextField(InputType.email, "Enter email id", ""),
                  Gaps.vGap15,
                  Inputs.getTextField(InputType.password, "Enter password", ""),
                  Gaps.vGap15,
                  Inputs.getTextField(
                      InputType.password, "Confirm password", ""),
                      Gaps.vGap15,
                ],
              ),
              Buttons.getButton(
                ButtonType.solid_button,
                "Let's get started",
                () {
                  NavigateToScreen.pushAndReplace(context, const HomePage());
                },
                alignment: Alignment.centerRight,
              ),
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
                  Buttons.getButton(
                    ButtonType.text_button,
                    "Register Now!",
                    () {
                      print("Register Now");
                    },
                    alignment: Alignment.center,
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
