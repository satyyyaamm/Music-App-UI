import 'package:flutter/material.dart';
import 'package:music_app_ui/screens/library.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music UI',
      home: Library(),
    );
  }
}
