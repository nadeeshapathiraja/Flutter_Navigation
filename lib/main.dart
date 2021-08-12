import 'package:flutter/material.dart';
import 'package:image_test/form_validation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: FormValidation(),
    );
  }
}
