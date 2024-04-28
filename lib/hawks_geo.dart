import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';

class HawksGeo extends StatelessWidget {
  HawksGeo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade100,
        title: Text(
          'Directions to United Center',
          style: TextStyle(
              color: Colors.blue.shade900
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20)
            )
        ),
      ),
      body: Container(
        color: Colors.cyan.shade50,
        child: Center(
          child: Column(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(0,30,0,0)),
                Image(
                    image: AssetImage("images/unitedcenter.png")
                ),
                Padding(padding: EdgeInsets.fromLTRB(0,30,0,0)),
                ElevatedButton(
                  onPressed: () => MapLauncher.showMarker(
                      mapType: MapType.google,
                      coords: Coords(41.8806, -87.6743),
                      title: "United Center"
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade100
                  ),
                  child: Text(
                    'Get directions',
                    style: TextStyle(
                        color: Colors.blue.shade900
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(0,30,0,0)),
                ElevatedButton(
                  onPressed: (){Navigator.of(context).popUntil((route) => route.isFirst);},
                  child: Text(
                    "Go home",
                    style: TextStyle(
                        color: Colors.green.shade900
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade100
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
