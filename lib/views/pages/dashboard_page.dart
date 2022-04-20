import 'package:flutter/material.dart';
import 'package:optimus/resources/resources.dart';

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
          'Good Day, Anonymous',
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
          child: Column(
            children: [
              const Text(
                  "Some message to user, which should inspire him/her to use the application"),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Image(
                  image: AssetImage('${Constants.imagePath}/placeholder.png'),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Services we provide",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
              ),
              Gaps.vGap20,
              // GridView(

              //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //     mainAxisSpacing: 10,
              //     crossAxisSpacing: 10,
              //     crossAxisCount: 2,
              //     childAspectRatio: 1
              //   ),
              //   children: [
              //      Text('Test'),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
