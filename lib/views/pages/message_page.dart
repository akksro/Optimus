import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:optimus/resources/colours.dart';
import 'package:optimus/resources/styles.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
              "https://assets3.lottiefiles.com/private_files/lf30_soknazp1.json",
              repeat: false),
          Gaps.vGap20,
          const Text(
            "No message found",
            style: TextStyle(color: Colours.secondaryFont, fontSize: 20),
          )
        ],
      )),
    );
  }
}
