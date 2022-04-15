import 'package:flutter/material.dart';
import 'package:optimus/resources/resources.dart';
import 'package:optimus/views/pages/onboarding_page.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: Constants.appName,
      debugShowCheckedModeBanner: false,
      home: OnboardingPage(),
    );
  }
}
