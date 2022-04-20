import 'package:flutter/material.dart';
import 'package:optimus/resources/resources.dart';
import 'package:optimus/views/widgets/menu.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          title: const Text(
            '${Constants.greeting}, Anonymous',
            style: TextStyle(color: Colours.primary),
            textAlign: TextAlign.start,
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notifications,
                color: Colours.primary,
              ),
              onPressed: () {
                // do something
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
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
            ),
            Gaps.vGap20,
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Menu(menuItem: Constants.menuItems[0]),
                    Menu(menuItem: Constants.menuItems[1]),
                    // Menu(Constants.menuItems[1])
                  ],
                ),
                Gaps.vGap10,
                Row(
                  children: <Widget>[
                    Menu(menuItem: Constants.menuItems[2]),
                    Menu(menuItem: Constants.menuItems[3]),
                  ],
                ),
              ],
            ),
          ]),
        )));
  }
}
