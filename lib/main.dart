import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
//  定义一个列表
  List<String> datas = ["hello world", "hello flutter", "hello niuniu"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("个人介绍"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Column(
//        children: datas.map((data){
//          return Text(data);
//        }).toList(),
        children: datas.map((data) => Text(data)).toList(),
//        children: <Widget>[
//          Text("hello world"),
//          Text("hello flutter"),
//          Text("hello niuniu"),
//        ],
      ),
    );
  }
}
