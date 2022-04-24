import 'package:flutter/material.dart';
import 'package:optimus/resources/resources.dart';
import 'package:optimus/utils/navigate_to_screen.dart';
import 'package:optimus/views/pages/notifications_page.dart';
import 'package:optimus/views/widgets/menu.dart';
import 'package:lottie/lottie.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = (size.width - 56) / 2;
    double height = (size.height - 512) / 2;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          title: const Text(
            '${Constants.greeting}, Anonymous',
            style:
                TextStyle(color: Colours.primary, fontWeight: FontWeight.w600),
            textAlign: TextAlign.start,
          ),
          actions: [
            IconButton(
              icon: Lottie.network(
                  "https://assets10.lottiefiles.com/packages/lf20_ohcfxhlo.json", repeat: false),
              onPressed: () {
                NavigateToScreen.push(context, const NotificationPage());
              },
            )
          ],
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(children: [
            const Text(Constants.greetingMessage),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Image(
                image: AssetImage('${Constants.imagePath}/placeholder.png'),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                Constants.serviceWeProvide,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colours.primaryFont),
              ),
            ),
            Gaps.vGap20,
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Menu(
                      menuItem: Constants.menuItems[0],
                      width: width,
                      height: height,
                    ),
                    Menu(
                      menuItem: Constants.menuItems[1],
                      width: width,
                      height: height,
                    ),
                  ],
                ),
                Gaps.vGap20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Menu(
                      menuItem: Constants.menuItems[2],
                      width: width,
                      height: height,
                    ),
                    Menu(
                      menuItem: Constants.menuItems[3],
                      width: width,
                      height: height,
                    ),
                  ],
                ),
              ],
            ),
          ]),
        )));
  }
}
