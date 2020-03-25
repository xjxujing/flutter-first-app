import 'package:first_app/pages/choose_location.dart';
import 'package:first_app/pages/loading.dart';
import 'package:flutter/material.dart';

//import 'pages/home.dart';
import 'package:first_app/pages/home.dart';

void main() => runApp(MaterialApp(
      initialRoute: "/home",
      routes: {
        "/": (context) => Loading(),
        "/home": (context) => Home(),
        "/location": (context) => ChooseLocation()
      },
    ));
