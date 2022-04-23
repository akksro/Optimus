import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:optimus/resources/resources.dart';
import 'package:optimus/views/pages/home_page.dart';

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
                outLineButtonWithImage("google.svg", "Sign in with google", () {
                  print("Login with google");
                }),
                Gaps.hGap10,
                outLineButtonWithImage("facebook.svg", "Sign in with facebook",
                    () {
                  print("Login with google");
                })
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
                appInput("Enter email Id", ""),
                Gaps.vGap10,
                appInput("Enter password", ""),
                Align(
                    child: textButton("Forgot Password?", () {
                  print("Forgot password");
                }, Alignment.centerRight))
              ],
            ),
            solidButton("Let's get started", () {
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
                textButton("Register Now", () {
                  print("Forgot password");
                }, Alignment.center)
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

  Widget solidButton(String content, Function onPressed,
      {AlignmentGeometry alignment = Alignment.center}) {
    return Align(
      alignment: alignment,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        child: Text(
          content,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            minimumSize:
                MaterialStateProperty.all<Size>(const Size.fromHeight(50)),
            backgroundColor: MaterialStateProperty.all<Color>(Colours.primary)),
      ),
    );
  }

  Widget textButton(
      String content, Function onPressed, AlignmentGeometry alignment) {
    return Align(
      alignment: alignment,
      child: TextButton(
          onPressed: onPressed(),
          child: Text(
            content,
            style: const TextStyle(
                color: Colours.primary, fontWeight: FontWeight.w600),
          )),
    );
  }

  Widget appInput(String placeholderText, String type) {
    InputBorder commonBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colours.primary.withAlpha(30), width: 2.0),
      borderRadius: BorderRadius.circular(10.0),
    );
    TextEditingController nameController = TextEditingController();
    return TextField(
      controller: nameController,
      decoration: InputDecoration(
        enabledBorder: commonBorder,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        fillColor: Colours.textfieldBGColor,
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        floatingLabelStyle: const TextStyle(color: Colours.primary),
        focusedBorder: commonBorder,
        labelText: placeholderText,
      ),
    );
  }

  Widget outLineButtonWithImage(
      String image, String content, Function onPressed) {
    return OutlinedButton.icon(
      style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.all(8))),
      label: Text(
        content,
        style: const TextStyle(
            fontSize: 12,
            color: Colours.primaryFont,
            fontWeight: FontWeight.w600),
      ),
      icon: SvgPicture.asset('assets/images/$image',
          semanticsLabel: content, fit: BoxFit.scaleDown),
      onPressed: () {},
    );
  }
}
