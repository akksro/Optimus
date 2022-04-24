import 'package:flutter/material.dart';
import 'package:optimus/resources/colours.dart';
import 'package:optimus/resources/constants.dart';
import 'package:optimus/resources/styles.dart';
import 'package:optimus/utils/navigate_to_screen.dart';
import 'package:optimus/views/pages/otp_page.dart';
import 'package:optimus/views/widgets/appbar.dart';
import 'package:optimus/views/widgets/buttons.dart';
import 'package:optimus/views/widgets/inputs.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar.transaparentAppbar(),
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gaps.vGap30,
                    const Align(
                      child: Image(
                        image: AssetImage(
                            '${Constants.imagePath}/placeholder.png'),
                      ),
                      alignment: Alignment.center,
                    ),
                    Gaps.vGap30,
                    Text("Forgot", style: FontStyles.greetingTextStyle),
                    Gaps.vGap5,
                    Text(
                      "Password?",
                      style: FontStyles.greetingTextStyle,
                    ),
                    Gaps.vGap10,
                    const Text(
                      "Dont worrry! it happens, Please enter the email address associated with your account.",
                      maxLines: 2,
                      softWrap: true,
                      style: TextStyle(color: Colours.secondaryFont),
                    ),
                    Gaps.vGap20,
                    Inputs.getTextField(InputType.email, "Enter email id", ""),
                    Gaps.vGap20,
                    Buttons.getButton(
                      ButtonType.solid_button,
                      "Submit",
                      () {
                        NavigateToScreen.push(context, const OtpPage());
                      },
                      alignment: Alignment.centerRight,
                    ),
                  ]))),
    );
  }
}
