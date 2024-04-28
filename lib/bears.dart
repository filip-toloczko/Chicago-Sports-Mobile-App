import 'package:flutter/material.dart';

class BearsScreen extends StatelessWidget {
  BearsScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange.shade100,
          centerTitle: true,
          title: Text(
            'Da Bears',
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
        body: Center(
          child: Container(
            color: Colors.cyan.shade50,
            width: 420,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(30)),
                Text(
                  "The Bears are Chicagos NFL Team.\nThey play at Soldier Field.\nThey have 9 NFL Championships:\n1 Superbowl and 8 NFL Championships",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blue.shade900
                  ),
                ),
                Padding(padding: EdgeInsets.all(30)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.shade100
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/bearsvideo');
                  },
                  child: Text(
                    "Bears Championship Video",
                    style: TextStyle(
                      color: Colors.blue.shade900
                    ),
                  )
                ),
                Padding(padding: EdgeInsets.all(30)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange.shade100
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/bearsgeo');
                  },
                  child: Text(
                    "Directions to Soldier Field",
                    style: TextStyle(
                        color: Colors.blue.shade900
                    ),
                  )
                ),
                Padding(padding: EdgeInsets.all(30)),
                ElevatedButton(
                  onPressed: (){Navigator.of(context).popUntil((route) => route.isFirst);},
                  child: Text(
                    "Go home",
                    style: TextStyle(
                        color: Colors.blue.shade900
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange.shade100
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}

