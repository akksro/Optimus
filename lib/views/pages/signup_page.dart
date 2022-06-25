import 'package:flutter/material.dart';
import 'package:optimus/resources/colours.dart';
import 'package:optimus/resources/constants.dart';
import 'package:optimus/resources/styles.dart';
import 'package:optimus/utils/navigate_to_screen.dart';
import 'package:optimus/views/pages/home_page.dart';
import 'package:optimus/views/widgets/appbar.dart';
import 'package:optimus/views/widgets/buttons.dart';
import 'package:optimus/views/widgets/inputs.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  late bool agreedToTandC;

  @override
  void initState() {
    setState(() {
      agreedToTandC = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width - 50;
    return Scaffold(
      appBar: Appbar.transaparentAppbar(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                child: Image(
                  image: AssetImage('${Constants.imagePath}/signup.png'),
                ),
                alignment: Alignment.center,
              ),
              Gaps.vGap20,
              Text("Let’s start,", style: FontStyles.greetingTextStyle),
              Gaps.vGap5,
              Text(
                "Creation of your account",
                style: FontStyles.greetingTextStyle,
              ),
              Gaps.vGap10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Buttons.getButton(
                      ButtonType.outline_button, "Signup with google", () {
                    print("Signup");
                  }, width: size / 2, image: "google.svg"),
                  Buttons.getButton(
                      ButtonType.outline_button, "Signup with facebook", () {
                    print("Signup");
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: agreedToTandC,
                    onChanged: (bool? value) {
                      setState(() {
                        agreedToTandC = !agreedToTandC;
                      });
                    },
                  ),
                  const Text(
                    'I agree to the',
                    style: TextStyle(
                        color: Colours.secondaryFont,
                        fontWeight: FontWeight.w600),
                  ),
                  Buttons.getButton(ButtonType.text_button, 'T&C', () {}),
                  const Text(
                    'and',
                    style: TextStyle(
                        color: Colours.secondaryFont,
                        fontWeight: FontWeight.w600),
                  ),
                  Buttons.getButton(
                    ButtonType.text_button,
                    'Privacy policy.',
                    () {},
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
