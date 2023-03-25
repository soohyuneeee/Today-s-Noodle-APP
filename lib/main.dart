import 'package:flutter/material.dart';
import 'home.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'SpoqaHanSansNeo',
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        accentColorBrightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Colors.blueGrey,
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}