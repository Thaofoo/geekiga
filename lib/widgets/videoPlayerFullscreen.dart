import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'basicOverlay.dart';

class VideoPlayerFullscreen extends StatelessWidget {
  final VideoPlayerController controller;

  const VideoPlayerFullscreen({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => controller.value.isInitialized
      ? Container(
          alignment: Alignment.topCenter,
          child: buildVideo(),
        )
      : const Center(child: CircularProgressIndicator());

  Widget buildVideo() => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () =>
            controller.value.isPlaying ? controller.pause() : controller.play(),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            buildVideoPlayer(),
            BasicOverlayWidget(controller: controller),
          ],
        ),
      );

  Widget buildVideoPlayer() => AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: VideoPlayer(controller),
      );

  // Widget buildFullScreen({})
}
