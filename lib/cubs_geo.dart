import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';

class CubsGeo extends StatelessWidget {
  CubsGeo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: Text(
          'Directions to Wrigley Field',
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
                  image: AssetImage("images/wrigley.png")
              ),
              Padding(padding: EdgeInsets.fromLTRB(0,30,0,0)),
              ElevatedButton(
                onPressed: () => MapLauncher.showMarker(
                  mapType: MapType.google,
                  coords: Coords(41.9484, -87.6553),
                  title: "Wrigley Field"
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade100
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
                      color: Colors.blue.shade900
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade100
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}

