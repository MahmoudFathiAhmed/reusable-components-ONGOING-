import 'package:flutter/material.dart';
import 'package:my_reusable_components/video_player/advanced_overlay_widget.dart';
import 'package:my_reusable_components/video_player/basic_overlay_widget.dart';
import 'package:my_reusable_components/video_player/orientation/video_player_fullscreen_widget.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatelessWidget {
  final VideoPlayerController controller;

  const VideoPlayerWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) => controller.value.isInitialized
      ? Container(alignment: Alignment.topCenter, child: buildVideo())
      : const SizedBox(
          height: 200,
          child: Center(child: CircularProgressIndicator()),
        );

  Widget buildVideo() => Stack(
        children: <Widget>[
          buildVideoPlayer(),
          Positioned.fill(
              child: AdvancedOverlayWidget(
            controller: controller,
            onClickedFullScreen: () {
              VideoPlayerFullscreenWidget(controller: controller,);
            },
          )),
          // Positioned.fill(child: BasicOverlayWidget(controller: controller)),
        ],
      );

  Widget buildVideoPlayer() => AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: VideoPlayer(controller),
      );
}
