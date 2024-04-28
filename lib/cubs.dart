import 'package:flutter/material.dart';

class CubsScreen extends StatelessWidget {
  CubsScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade100,
          centerTitle: true,
          title: Text(
            'The Cubs',
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
                  "The Cubs are one of Chicagos MLB teams.\nThey have three World Series Wins.\nTheir last win was in 2016.",
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
                        backgroundColor: Colors.blue.shade100
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/cubsvideo');
                    },
                    child: Text(
                      "Cubs World Series Video",
                      style: TextStyle(
                          color: Colors.blue.shade900
                      ),
                    )
                ),
                Padding(padding: EdgeInsets.all(30)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade100
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/cubsgeo');
                    },
                    child: Text(
                      "Directions to Wrigley Field",
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
                      backgroundColor: Colors.blue.shade100
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

