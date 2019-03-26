import 'package:flutter/material.dart';
import 'package:flutterwtsp/whtsphome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wtsp',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new whtsphome(),
    );
  }
}
