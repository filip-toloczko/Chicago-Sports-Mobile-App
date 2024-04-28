import 'package:flutter/material.dart';

class SoxScreen extends StatelessWidget {
  SoxScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('The Sox'),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/soxvideo');
                  },
                  child: const Text("White Sox Championship Video")
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/soxgeo');
                  },
                  child: const Text("Directions to Guaranteed Rate Field")
              ),
            ],
          ),
        )
    );
  }
}

