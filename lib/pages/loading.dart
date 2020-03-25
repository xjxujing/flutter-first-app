import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    // http request
    Response response = await get("https://jsonplaceholder.typicode.com/todos/1");
    // 把 json 数据转成 map 类型
    Map data = jsonDecode(response.body);
    print(data);
    print(data["title"]);

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    print("initState function ran");

    getData();

//    print("我的位置在 getData() 之后");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("loading screen"),
    );
  }
}
