import 'package:flutter/material.dart';
import 'package:image_test/externalplugin/externalpluin.dart';
import 'package:image_test/splash_screen/splash_screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen1(),
    );
  }
}
