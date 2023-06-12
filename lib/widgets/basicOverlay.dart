import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class BasicOverlayWidget extends StatelessWidget {
  final VideoPlayerController controller;

  const BasicOverlayWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        buildPlay(),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: buildIndicator(),
        ),
      ],
    );
  }

  Widget buildIndicator() {
    return SizedBox(
      height: 30,
      child: VideoProgressIndicator(
        controller,
        // colors = const VideoProgressColors(playedColor: Colors.amber, bufferedColor: Colors.grey, backgroundColor: Colors.white,),
        colors: const VideoProgressColors(
          playedColor: Colors.amber,
          bufferedColor: Color.fromARGB(146, 158, 158, 158),
          backgroundColor: Color.fromRGBO(234, 234, 234, 0.494),
        ),
        allowScrubbing: true,
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      ),
    );
  }

  Widget buildPlay() {
    return controller.value.isPlaying
        ? Container()
        : Container(
            alignment: Alignment.center,
            color: Colors.black26,
            child: const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 80,
            ),
          );
  }
}
