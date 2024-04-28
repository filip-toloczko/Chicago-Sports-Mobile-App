import 'package:flutter/material.dart';

class HawksScreen extends StatelessWidget {
  HawksScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade100,
          centerTitle: true,
          title: Text(
            'The Blackhawks',
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
                  "The Blackhawks are Chicagos NHL team.\nThey have 6 Stanley Cups.\nThree of these wins came in the 2010s.\nThey play in the United Center",
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
                        backgroundColor: Colors.green.shade100
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/hawksvideo');
                    },
                    child: Text(
                      "Hawks Stanley Cup Video",
                      style: TextStyle(
                          color: Colors.blue.shade900
                      ),
                    )
                ),
                Padding(padding: EdgeInsets.all(30)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade100
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/hawksgeo');
                    },
                    child: Text(
                      "Directions to United Center",
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
                      backgroundColor: Colors.green.shade100
                  ),
                )
              ],
          ),
        ),
      ),
    );
  }
}

