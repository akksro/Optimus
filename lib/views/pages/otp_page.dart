import 'package:flutter/material.dart';
import 'package:optimus/resources/colours.dart';
import 'package:optimus/resources/constants.dart';
import 'package:optimus/resources/styles.dart';
import 'package:optimus/utils/navigate_to_screen.dart';
import 'package:optimus/views/pages/reset_password_page.dart';
import 'package:optimus/views/widgets/appbar.dart';
import 'package:optimus/views/widgets/buttons.dart';
import 'package:optimus/views/widgets/inputs.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

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
                    Text("Enter OTP", style: FontStyles.greetingTextStyle),
                    Gaps.vGap10,
                    const Text(
                      "Enter a 6 digit security code which is sent to your registered email id.",
                      maxLines: 2,
                      softWrap: true,
                      style: TextStyle(color: Colours.secondaryFont),
                    ),
                    Gaps.vGap20,
                    Inputs.getTextField(InputType.text, "Enter OTP", ""),
                    Gaps.vGap20,
                    Buttons.getButton(
                      ButtonType.solid_button,
                      "Reset Password",
                      () {
                        NavigateToScreen.push(
                            context,
                            const ResetPasswordPage(
                              isUserForgotPassword: true,
                            ));
                      },
                      alignment: Alignment.centerRight,
                    ),
                  ]))),
    );
  }
}
