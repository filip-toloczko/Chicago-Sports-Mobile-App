import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:ftolo2_project_4/bears_video.dart';
// import 'package:video_player/video_player.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'MyHomePage.dart';
import 'bears_video.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const MyHomePage(),
        '/bears' : (context) => BearsScreen(),
      },
    );
  }
}


