import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:ftolo2_project_4/bears_video.dart';
// import 'package:video_player/video_player.dart';
// import 'package:audioplayers/audioplayers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _sectionTapped(int i){
    if(i == 0){
      Navigator.pushNamed(context, '/bears');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("widget.title"),
      ),
      body: Center(
          child: PieChart(
            PieChartData(
                sections: showingSections(),
                pieTouchData: PieTouchData(
                    touchCallback: (event, response){
                      _sectionTapped(0);
                    }
                )
            ),
          )
      ),
    );
  }



  List<PieChartSectionData> showingSections(){
    return List.generate(
        5,
            (i){
          switch(i){
            case 0:
              return PieChartSectionData(
                  color: Colors.grey,
                  value: 3,
                  title: 'Sox\n(3)',
                  radius: 150
              );
            case 1:
              return PieChartSectionData(
                  color: Colors.blue.shade800,
                  value: 3,
                  title: 'Cubs\n(3)',
                  radius: 150
              );
            case 2:
              return PieChartSectionData(
                  color: Colors.orange,
                  value: 9,
                  title: 'Bears\n(9)',
                  radius: 150
              );
            case 3:
              return PieChartSectionData(
                  color: Colors.redAccent.shade700,
                  value: 6,
                  title: 'Bulls\n(6)',
                  radius: 150
              );
            case 4:
              return PieChartSectionData(
                  color: Colors.green,
                  value: 6,
                  title: 'Blackhawks\n(6)',
                  radius: 150
              );
            default:
              throw Error();
          }

        }


    );
  }
}
