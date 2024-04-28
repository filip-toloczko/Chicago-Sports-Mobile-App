import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';

class SoxGeo extends StatelessWidget {
  SoxGeo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guaranteed Rate Field Directions'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(child: Builder(
        builder: (context) {
          return ElevatedButton(
            onPressed: () => MapLauncher.showMarker(
                mapType: MapType.google,
                coords: Coords(41.8300, -87.6345),
                title: "Guaranteed Rate Field"
            ),
            child: Text('Get directions'),
          );
        },
      )),
    );
  }
}

