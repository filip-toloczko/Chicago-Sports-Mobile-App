import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BearsScreen extends StatelessWidget {
  BearsScreen({Key? key}) : super(key: key);

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: '7-8lt9yxNdY',
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
        title: const Text('Bears of the World'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SizedBox(
        height: 255,
        width: 412,
        child: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.black,
          progressColors: const ProgressBarColors(
            playedColor: Colors.black,
            handleColor: Colors.black,
          ),
          onReady: () {
            _controller.pause();
          },
        ),
      )
    );
  }
}

