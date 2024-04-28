import 'package:flutter/material.dart';

class BullsScreen extends StatelessWidget {
  BullsScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade100,
          centerTitle: true,
          title: Text(
            'The Bulls',
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
                Padding(padding: EdgeInsets.all(30)),
                Text(
                  "The Bulls are Chicagos NBA Team.\nThey have 6 NBA Championships.\nAll of their championships were won in the 90s.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue.shade900
                  ),
                ),
                Padding(padding: EdgeInsets.all(30)),
                ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/bullsvideo');
                  },
                  child: Text(
                    "Bulls Finals Video",
                    style: TextStyle(
                        color: Colors.blue.shade900
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade100
                  ),
                ),
                Padding(padding: EdgeInsets.all(30)),
                ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/bullsgeo');
                  },
                  child: Text(
                    "Directions to United Center",
                    style: TextStyle(
                        color: Colors.blue.shade900
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade100
                  ),
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
                      backgroundColor: Colors.red.shade100
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}

