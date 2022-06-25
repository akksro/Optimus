import 'package:flutter/material.dart';
import 'package:optimus/resources/resources.dart';
import 'package:optimus/utils/navigate_to_screen.dart';
import 'package:optimus/views/pages/notifications_page.dart';
import 'package:optimus/views/widgets/menu.dart';
import 'package:lottie/lottie.dart';
import 'package:optimus/views/widgets/posts.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = (size.width - 40) / 2;
    double height = (size.height - 500) / 2;
    return Scaffold(
        backgroundColor: Colours.secondaryBG,
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
                  "https://assets10.lottiefiles.com/packages/lf20_ohcfxhlo.json",
                  repeat: false),
              onPressed: () {
                NavigateToScreen.push(context, const NotificationPage());
              },
            )
          ],
        ),
        body: SafeArea(
            child: Column(children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(Constants.greetingMessage),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: const Image(
              fit: BoxFit.fill,
              image: AssetImage('${Constants.imagePath}/placeholder.png'),
            ),
          ),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                color: Colours.primaryBG,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            // color: Colours.primaryBG,
            child: Column(
              children: [
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    AbstractMenu(Constants.menuItems[0].image,
                        Constants.menuItems[0].title),
                    AbstractMenu(Constants.menuItems[1].image,
                        Constants.menuItems[1].title),
                    AbstractMenu(Constants.menuItems[2].image,
                        Constants.menuItems[2].title),
                    AbstractMenu(Constants.menuItems[3].image,
                        Constants.menuItems[3].title),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: <Widget>[
                    //     Menu(
                    //       menuItem: Constants.menuItems[0],
                    //       width: width,
                    //       height: height,
                    //     ),
                    //     Menu(
                    //       menuItem: Constants.menuItems[1],
                    //       width: width,
                    //       height: height,
                    //     ),
                    //   ],
                    // ),
                    // Gaps.vGap10,
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: <Widget>[
                    //     Menu(
                    //       menuItem: Constants.menuItems[2],
                    //       width: width,
                    //       height: height,
                    //     ),
                    //     Menu(
                    //       menuItem: Constants.menuItems[3],
                    //       width: width,
                    //       height: height,
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
                Gaps.vGap20,
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    Constants.recentPosts,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Colours.primaryFont),
                  ),
                ),
                Gaps.vGap10,
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Posts.getPost(
                            context,
                            "I want to sell my ipad",
                            "Some detailed description about the post which describe the post",
                            "placeholder.png"),
                        Posts.getPost(
                            context,
                            "Looking for roomate at Arizona",
                            "Some detailed description about the post which describe the post",
                            "placeholder.png"),
                        Posts.getPost(
                            context,
                            "Looking for female roomate",
                            "Some detailed description about the post which describe the post",
                            "placeholder.png"),
                        Posts.getPost(
                            context,
                            "2BHK apartment available at cheaper price for student",
                            "Some detailed description about the post which describe the post",
                            "placeholder.png"),
                        Posts.getPost(
                            context,
                            "Room for rent at Atlanta",
                            "Some detailed description about the post which describe the post",
                            "placeholder.png"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ))
        ])));
  }

  // ignore: non_constant_identifier_names
  Widget AbstractMenu(String image, String title) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(15),
          child: Image(
            image: AssetImage('assets/images/$image'),
          ),
          decoration: BoxDecoration(
              color: Colours.secondary,
              borderRadius: BorderRadius.circular(10)),
        ),
        Gaps.vGap5,
        Text(
          title,
          style: const TextStyle(fontSize: 12, color: Colours.primaryFont),
        ),
      ],
    );
  }
}
