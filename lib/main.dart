import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class Datas {
  String text;
  String author;

  Datas({this.text, this.author});
}

class _HomeState extends State<Home> {
  List<Datas> datas = [
    Datas(text: "hello", author: "lucy"),
    Datas(text: "hello", author: "niuniu"),
    Datas(text: "hello", author: "lufei"),
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
//        children: datas.map((data){
//          return Text(data);
//        }).toList(),
        children:
            datas.map((data) => Text('${data.text}:${data.author}')).toList(),
//        children: <Widget>[
//          Text("hello world"),
//          Text("hello flutter"),
//          Text("hello niuniu"),
//        ],
      ),
    );
  }
}
