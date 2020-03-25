import 'package:flutter/material.dart';
import 'package:first_app/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = "loading";

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: "北京", flag: "China.png", url: "Asia/Shanghai");
    await instance.getData();

    // 状态更新
    setState(() {
      time = instance.time;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }
}
