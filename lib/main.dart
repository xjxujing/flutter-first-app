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
    Datas(text: "hello lucy", author: "lucy"),
    Datas(text: "hello niuniu", author: "niuniu"),
    Datas(text: "hello lufei", author: "lufei"),
  ];

  // 封装的 widget
  Widget dataTemplate(data) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(data.text,
                  style: TextStyle(fontSize: 18.0, color: Colors.grey[600])),
              SizedBox(height: 6.0),
              Text(data.author,
                  style: TextStyle(fontSize: 14.0, color: Colors.grey[800])),
            ],
          ),
        ));
  }

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
        children: datas.map((data) => dataTemplate(data)).toList(),
      ),
    );
  }
}
