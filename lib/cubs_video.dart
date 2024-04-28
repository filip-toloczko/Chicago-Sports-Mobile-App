import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CubsVideo extends StatelessWidget {
  CubsVideo({Key? key}) : super(key: key);

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'HOp8w2PgHlM',
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
          title: const Text('Cubs Win the World Series'),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: SizedBox(
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
        )
    );
  }
}

