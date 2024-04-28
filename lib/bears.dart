import 'package:flutter/material.dart';

class BearsScreen extends StatelessWidget {
  BearsScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Da Bears'),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/bearsvideo');
                  },
                  child: const Text("Bears Championship Video")
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/bearsgeo');
                  },
                  child: const Text("Directions to Soldier Field")
              ),
            ],
          ),
        )
    );
  }
}

