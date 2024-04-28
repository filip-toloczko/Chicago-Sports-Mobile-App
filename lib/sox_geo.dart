import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';

class SoxGeo extends StatelessWidget {
  SoxGeo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: Text(
          'Directions to Guaranteed Rate Field',
          style: TextStyle(
              color: Colors.blue.shade900,
              fontSize: 20
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
                  image: AssetImage("images/soxstadium.png")
              ),
              Padding(padding: EdgeInsets.fromLTRB(0,30,0,0)),
              ElevatedButton(
                onPressed: () => MapLauncher.showMarker(
                  mapType: MapType.google,
                  coords: Coords(41.8300, -87.6345),
                  title: "Guaranteed Rate Field"
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade100
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
                    backgroundColor: Colors.grey.shade100
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}

