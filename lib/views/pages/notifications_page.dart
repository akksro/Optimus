import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:optimus/resources/colours.dart';
import 'package:optimus/views/widgets/appbar.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar.transaparentAppbar(title: "Notification"),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
            "https://assets6.lottiefiles.com/packages/lf20_rc6CDU.json",
          ),
          const Text(
            "No notifications found",
            style: TextStyle(color: Colours.secondaryFont, fontSize: 20),
          )
        ],
      )),
    );
  }
}
