import 'package:flutter/material.dart';
import 'datas.dart';
import 'datas_card.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Datas> datas = [
    Datas(text: "hello lucy", author: "lucy"),
    Datas(text: "hello niuniu", author: "niuniu"),
    Datas(text: "hello lufei", author: "lufei"),
  ];

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
        // 这里使用封装的 widget
        children: datas.map((data) => DataCard(data)).toList(),
      ),
    );
  }
}
