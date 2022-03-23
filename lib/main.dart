import 'package:flutter/material.dart';
import './sidebar_layout/SideBarLayout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ocm',
      debugShowCheckedModeBanner: false,
      home: SideBarLayout(),
      theme: ThemeData(scaffoldBackgroundColor: Colors.white,primaryColor: Colors.white),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
