import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // SafeArea Widget 从状态栏下面开始
      body: SafeArea(child: Text("home screen")),
    );
  }
}
