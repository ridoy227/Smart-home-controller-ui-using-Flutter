import 'package:flutter/material.dart';
import 'screens/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
      primaryColor: Color(0xFF0E16DE),
      accentColor: Color(0xFFFEF9EB)
      ),
      home: HomePage(),
    );
  }
}

