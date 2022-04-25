import 'package:flutter/material.dart';
import 'package:optimus/resources/resources.dart';
import 'package:optimus/utils/navigate_to_screen.dart';
import 'package:optimus/views/pages/forgot_password_page.dart';
import 'package:optimus/views/pages/home_page.dart';
import 'package:optimus/views/pages/signup_page.dart';
import 'package:optimus/views/widgets/buttons.dart';
import 'package:optimus/views/widgets/inputs.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width - 50;
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.vGap10,
               Container(
                 height: 250,
                child: const Image(
                  image: AssetImage('${Constants.imagePath}/login.png'),
                ),
                alignment: Alignment.center,
              ),
              Gaps.vGap15,
              Text("Hey there,", style: FontStyles.greetingTextStyle),
              Gaps.vGap5,
              Text(
                "Please login into your account",
                style: FontStyles.greetingTextStyle,
              ),
              Gaps.vGap10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Buttons.getButton(
                      ButtonType.outline_button, "Login with google", () {
                    print("Login with google");
                  }, width: size / 2, image: "google.svg"),
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
                  Inputs.getTextField(
                      InputType.email, "Enter email id", "anonymous@mail.com"),
                  Gaps.vGap15,
                  Inputs.getTextField(InputType.password, "Enter password", ""),
                  Align(
                      child: Buttons.getButton(
                    ButtonType.text_button,
                    "Forgot Password?",
                    () {
                      NavigateToScreen.push(
                          context, const ForgotPasswordPage());
                    },
                    alignment: Alignment.centerRight,
                  ))
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
                      NavigateToScreen.push(context, const SignupPage());
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
