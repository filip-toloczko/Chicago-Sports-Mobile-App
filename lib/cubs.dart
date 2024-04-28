import 'package:flutter/material.dart';

class CubsScreen extends StatelessWidget {
  CubsScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('The Cubs'),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/cubsvideo');
                  },
                  child: const Text("Bears Championship Video")
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/cubsgeo');
                  },
                  child: const Text("Directions to Wrigley Field")
              ),
            ],
          ),
        )
    );
  }
}

