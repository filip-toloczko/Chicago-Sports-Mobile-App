import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';

class CubsGeo extends StatelessWidget {
  CubsGeo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrigley Field Directions'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(child: Builder(
        builder: (context) {
          return ElevatedButton(
            onPressed: () => MapLauncher.showMarker(
                mapType: MapType.google,
                coords: Coords(41.9484, -87.6553),
                title: "Wrigley Field"
            ),
            child: Text('Get directions'),
          );
        },
      )),
    );
  }
}

