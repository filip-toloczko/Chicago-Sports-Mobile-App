import 'package:flutter/material.dart';

class SoxScreen extends StatelessWidget {
  SoxScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        centerTitle: true,
        title: Text(
          'The Sox',
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
                "The Sox are one of Chicagos MLB teams.\nThey have three World Series wins.\nThey most recently won in 2005.",
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
                      backgroundColor: Colors.grey.shade100
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/soxvideo');
                  },
                  child: const Text("White Sox Championship Video")
              ),
              Padding(padding: EdgeInsets.all(30)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade100
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/soxgeo');
                  },
                  child: const Text("Directions to Guaranteed Rate Field")
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
                    backgroundColor: Colors.grey.shade100
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

