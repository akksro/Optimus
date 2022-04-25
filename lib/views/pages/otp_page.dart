import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:optimus/resources/colours.dart';
import 'package:optimus/resources/constants.dart';
import 'package:optimus/resources/styles.dart';
import 'package:optimus/utils/navigate_to_screen.dart';
import 'package:optimus/views/pages/reset_password_page.dart';
import 'package:optimus/views/widgets/appbar.dart';
import 'package:optimus/views/widgets/buttons.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  Widget otpField(BuildContext context) {
    return SizedBox(
      height: 68,
      width: 64,
      child: TextFormField(
        onChanged: (value) => {
          if (value.length == 1) {FocusScope.of(context).nextFocus()}
        },
        onSaved: (value) {
          print(value);
        },
        decoration: Decorations.inputDecoration,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }

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
                    Gaps.vGap15,
                    const Align(
                      child: Image(
                        image: AssetImage(
                            '${Constants.imagePath}/otp.png'),
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
                    Form(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            otpField(context),
                            otpField(context),
                            otpField(context),
                            otpField(context),
                          ]),
                    ),
                    Gaps.vGap20,
                    Buttons.getButton(
                      ButtonType.solid_button,
                      "Submit OTP",
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
