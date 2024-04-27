import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
// import 'package:video_player/video_player.dart';
// import 'package:audioplayers/audioplayers.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // final player = AudioPlayer();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: PieChart(
          PieChartData(
            sections: showingSections(),

          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }



  List<PieChartSectionData> showingSections(){
    return List.generate(
      6,
      (i){
        switch(i){
          case 0:
            return PieChartSectionData(
              color: Colors.grey,
              value: 3,
              title: 'Sox',
              radius: 150
            );
          case 1:
            return PieChartSectionData(
                color: Colors.blue.shade800,
                value: 3,
                title: 'Cubs',
                radius: 150
            );
          case 2:
            return PieChartSectionData(
                color: Colors.orange,
                value: 9,
                title: 'Bears',
                radius: 150
            );
          case 3:
            return PieChartSectionData(
                color: Colors.redAccent.shade700,
                value: 6,
                title: 'Bulls',
                radius: 150
            );
          case 4:
            return PieChartSectionData(
                color: Colors.green,
                value: 6,
                title: 'Blackhawks',
                radius: 150
            );
          case 5:
            return PieChartSectionData(
                color: Colors.red.shade400,
                value: 5,
                title: 'Fire',
                radius: 150
            );
          default:
            throw Error();
        }

      }


    );
  }
}

