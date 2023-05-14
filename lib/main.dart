import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guhotel/screens/home_screens.dart';
import 'package:guhotel/screens/welcome_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implements initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFEDF2F6)),
      home: WelcomeScreen(),
    );
  }
}
