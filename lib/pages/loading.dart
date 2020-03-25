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
    Response response = await get("http://worldclockapi.com/api/json/est/now");
    // 把 json 数据转成 map 类型
    Map data = jsonDecode(response.body);
    // print(data);
    String currentDateTime = data["currentDateTime"];
    String offset = data["utcOffset"].substring(1, 3);
    // 上面获取到的当前时间和与格林威治相差的时间

    // 创建时间对象，还原时间
    DateTime now = DateTime.parse(currentDateTime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
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
