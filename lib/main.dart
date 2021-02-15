import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/view/splash_screen.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: backgroundColor,
          fontFamily: "Mulish",
          textTheme: TextTheme(bodyText1: TextStyle(color: textColor)),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
