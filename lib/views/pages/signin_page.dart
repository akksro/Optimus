import 'package:flutter/material.dart';
import 'package:optimus/resources/resources.dart';
import 'package:optimus/views/pages/home_page.dart';
import 'package:optimus/views/widgets/buttons.dart';
import 'package:optimus/views/widgets/input_field.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width - 60;
    const TextStyle greetinTextStyle = TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
        color: Colours.primaryFont);
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
              const Text("Hey there,", style: greetinTextStyle),
              Gaps.vGap5,
              const Text(
                "Please login into your account",
                style: greetinTextStyle,
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
              const Align(
                child:
                    Text("OR", style: TextStyle(color: Colours.secondaryFont)),
                alignment: Alignment.center,
              ),
              Gaps.vGap20,
              Column(
                children: [
                  const InputField(placeholder: "Enter email Id"),
                  Gaps.vGap10,
                  const InputField(placeholder: "Enter password"),
                  Align(
                      child: Buttons.getButton(
                    ButtonType.text_button,
                    "Forgot Password?",
                    () {
                      print("Forgot password");
                    },
                    alignment: Alignment.centerRight,
                  ))
                ],
              ),
              Buttons.getButton(
                ButtonType.solid_button,
                "Let's get started",
                (){_goto(context, const HomePage());},
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

  _goto(BuildContext mainContext, Widget page) =>
      Navigator.pushReplacement<void, void>(
        mainContext,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => page,
        ),
      );
}
