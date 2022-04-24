import 'package:flutter/material.dart';
import 'package:optimus/resources/colours.dart';
import 'package:optimus/resources/constants.dart';
import 'package:optimus/resources/styles.dart';
import 'package:optimus/utils/navigate_to_screen.dart';
import 'package:optimus/views/pages/home_page.dart';
import 'package:optimus/views/widgets/buttons.dart';
import 'package:optimus/views/widgets/inputs.dart';

class ResetPasswordPage extends StatefulWidget {
  final bool isUserForgotPassword;
  const ResetPasswordPage({Key? key, required this.isUserForgotPassword})
      : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colours.primary),
      ),
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
                    Text("Reset", style: FontStyles.greetingTextStyle),
                    Gaps.vGap5,
                    Text(
                      "Password Now",
                      style: FontStyles.greetingTextStyle,
                    ),
                    Gaps.vGap10,
                    const Text(
                      "We hold you, You can reset the password now!",
                      maxLines: 2,
                      softWrap: true,
                      style: TextStyle(color: Colours.secondaryFont),
                    ),
                    Gaps.vGap20,
                    !widget.isUserForgotPassword
                        ? Inputs.getTextField(
                            InputType.password, "Enter current password", "")
                        : Container(),
                    Inputs.getTextField(
                        InputType.password, "Enter new password", ""),
                    Gaps.vGap15,
                    Inputs.getTextField(
                        InputType.password, "Confirm new password", ""),
                    Gaps.vGap20,
                    Buttons.getButton(
                      ButtonType.solid_button,
                      "Reset Password",
                      () {
                        NavigateToScreen.pushAndRemove(context, const HomePage());
                      },
                      alignment: Alignment.centerRight,
                    ),
                  ]))),
    );
  }
}
