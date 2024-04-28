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
      Navigator.pushNamed(context, '/sox');
    }
    if(i == 1){
      Navigator.pushNamed(context, '/cubs');
    }
    if(i == 2){
      Navigator.pushNamed(context, '/bears');
    }
    if(i == 3){
      Navigator.pushNamed(context, '/bulls');
    }
    if(i == 4){
      Navigator.pushNamed(context, '/hawks');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan.shade50,
        title: Text(
          "Champions in Chicago",
          style: TextStyle(
            color: Colors.red.shade400,
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),
        ),
      ),
      body: Container(
          color: Colors.cyan.shade50,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(100)),
              Text(
                "Click on a slice for more info",
                style: TextStyle(
                  color: Colors.blue.shade900,
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),
              ),
              Expanded(
                child: PieChart(
                  PieChartData(
                      sections: showingSections(),
                      pieTouchData: PieTouchData(
                          touchCallback: (event, response){
                            if(response != null)
                            _sectionTapped(response.touchedSection!.touchedSectionIndex);
                          }
                      )
                  ),
                )
              )
            ],
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
                  color: Colors.grey.shade400,
                  value: 3,
                  title: 'Sox\n(3)',
                  titleStyle: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                  radius: 150
              );
            case 1:
              return PieChartSectionData(
                  color: Colors.blue.shade400,
                  value: 3,
                  title: 'Cubs\n(3)',
                  titleStyle: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  radius: 150
              );
            case 2:
              return PieChartSectionData(
                  color: Colors.orange.shade300,
                  value: 9,
                  title: 'Bears\n(9)',
                  titleStyle: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  radius: 150
              );
            case 3:
              return PieChartSectionData(
                  color: Colors.red.shade300,
                  value: 6,
                  title: 'Bulls\n(6)',
                  titleStyle: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  radius: 150
              );
            case 4:
              return PieChartSectionData(
                  color: Colors.green.shade400,
                  value: 6,
                  title: 'Blackhawks\n(6)',
                  titleStyle: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  radius: 150
              );
            default:
              throw Error();
          }

        }
    );
  }
}
