import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
//    print("build function ran");
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text("选择一个地区"),
          centerTitle: true,
          elevation: 0,
        ),
        body: RaisedButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Text("counter is $counter"),
        ));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
//    print("dispose function ran");
  }
}
