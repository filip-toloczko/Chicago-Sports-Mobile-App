import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';

class BearsGeo extends StatelessWidget {
  BearsGeo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Soldier Field Directions'),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Center(child: Builder(
          builder: (context) {
            return ElevatedButton(
              onPressed: () => MapLauncher.showMarker(
                  mapType: MapType.google,
                  coords: Coords(41.8623, -87.6167),
                  title: "Soldier Field"
              ),
              child: Text('Get directions'),
            );
          },
        )),
    );
  }
}

