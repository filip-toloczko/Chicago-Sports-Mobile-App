import 'package:flutter/material.dart';
import 'package:ftolo2_project_4/bears_geo.dart';
import 'package:ftolo2_project_4/bears_video.dart';
import 'MyHomePage.dart';
import 'bears.dart';
import 'sox.dart';
import 'sox_video.dart';
import 'sox_geo.dart';
import 'cubs.dart';
import 'cubs_video.dart';
import 'cubs_geo.dart';
import 'bulls.dart';
import 'blackhawks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Champions in Chicago',
      initialRoute: '/home',
      routes: {
        '/home': (context) => const MyHomePage(),
        '/bears' : (context) => BearsScreen(),
        '/bearsvideo' : (context) => BearsVideo(),
        '/bearsgeo' : (context) => BearsGeo(),
        '/sox' : (context) => SoxScreen(),
        '/soxvideo': (context) => SoxVideo(),
        '/soxgeo' : (context) => SoxGeo(),
        '/cubs' : (context) => CubsScreen(),
        '/cubsgeo' : (context) => CubsGeo(),
        '/cubsvideo' : (context) => CubsVideo(),
        '/bulls' : (context) => BullsScreen(),
        '/hawks' : (context) => HawksScreen(),
      },
    );
  }
}


