import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HawksVideo extends StatelessWidget {
  HawksVideo({Key? key}) : super(key: key);

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'x839H67W64g',
    flags: const YoutubePlayerFlags(
      controlsVisibleAtStart: true,
      loop: true,
      useHybridComposition: true,
      autoPlay: false,
      mute: false,
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade100,
        title: Text(
          'Hawks win the Stanley Cup',
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
        child: Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(0,30,0,0)),
            SizedBox(
              height: 255,
              width: 412,
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.redAccent,
                progressColors: const ProgressBarColors(
                  playedColor: Colors.redAccent,
                  handleColor: Colors.redAccent,
                ),
                onReady: () {
                  _controller.pause();
                },
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0,30,0,0)),
            Text(
              'This is the moment the Blackhawks won their last Stanley Cup.',
              style: TextStyle(
                  color: Colors.blue.shade900,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.fromLTRB(0,30,0,0)),
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
          ]
        ),
      ),
    );
  }
}

