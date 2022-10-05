import 'package:flutter/material.dart';
import 'package:my_reusable_components/video_player/video_player_widget.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  final String videoUrl;

  const MyVideoPlayer({super.key, required this.videoUrl});

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..addListener(() => setState(() {}))
      ..setLooping(false)
      ..initialize().then((_) => _controller.pause());
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) => Container(
        height: 400,
        alignment: Alignment.center,
        child: VideoPlayerWidget(controller: _controller),
      );
}
