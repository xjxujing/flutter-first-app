import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String time;
  String flag;
  String url;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getData() async {
    // http request
    Response response = await get("http://worldclockapi.com/api/json/est/now");
    // 把 json 数据转成 map 类型
    Map data = jsonDecode(response.body);
    String currentDateTime = data["currentDateTime"];
    String offset = data["utcOffset"].substring(1, 3);

    DateTime now = DateTime.parse(currentDateTime);
    now = now.add(Duration(hours: int.parse(offset)));
    time = now.toString();
  }
}
