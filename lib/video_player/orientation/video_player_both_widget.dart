
import 'package:auto_orientation/auto_orientation.dart';
import 'package:my_reusable_components/video_player/advanced_overlay_widget.dart';
import 'package:native_device_orientation/native_device_orientation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:wakelock/wakelock.dart';

class VideoPlayerBothWidget extends StatefulWidget {
  final VideoPlayerController controller;

  const VideoPlayerBothWidget({
    super.key,
    required this.controller,
  });

  @override
  _VideoPlayerBothWidgetState createState() => _VideoPlayerBothWidgetState();
}

class _VideoPlayerBothWidgetState extends State<VideoPlayerBothWidget> {
  Orientation? target;

  @override
  void initState() {
    super.initState();

    NativeDeviceOrientationCommunicator()
        .onOrientationChanged(useSensor: true)
        .listen((event) {
      final isPortrait = event == NativeDeviceOrientation.portraitUp;
      final isLandscape = event == NativeDeviceOrientation.landscapeLeft ||
          event == NativeDeviceOrientation.landscapeRight;
      final isTargetPortrait = target == Orientation.portrait;
      final isTargetLandscape = target == Orientation.landscape;

      if (isPortrait && isTargetPortrait || isLandscape && isTargetLandscape) {
        target = null;
        SystemChrome.setPreferredOrientations(DeviceOrientation.values);
      }
    });
  }

  void setOrientation(bool isPortrait) {
    if (isPortrait) {
      Wakelock.disable();
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
    } else {
      Wakelock.enable();
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: []);
    }
  }

  @override
  Widget build(BuildContext context) =>
      widget.controller.value.isInitialized
          ? Container(alignment: Alignment.topCenter, child: buildVideo())
          : const Center(child: CircularProgressIndicator());

  Widget buildVideo() => OrientationBuilder(
    builder: (context, orientation) {
      final isPortrait = orientation == Orientation.portrait;

      setOrientation(isPortrait);

      return Stack(
        fit: isPortrait ? StackFit.loose : StackFit.expand,
        children: <Widget>[
          buildVideoPlayer(),
          Positioned.fill(
            child: AdvancedOverlayWidget(
              controller: widget.controller,
              onClickedFullScreen: () {
                target = isPortrait
                    ? Orientation.landscape
                    : Orientation.portrait;

                if (isPortrait) {
                  AutoOrientation.landscapeRightMode();
                } else {
                  AutoOrientation.portraitUpMode();
                }
              },
            ),
          ),
        ],
      );
    },
  );

  Widget buildVideoPlayer() {
    final video = AspectRatio(
      aspectRatio: widget.controller.value.aspectRatio,
      child: VideoPlayer(widget.controller),
    );

    return buildFullScreen(child: video);
  }

  Widget buildFullScreen({
    required Widget child,
  }) {
    final size = widget.controller.value.size;
    final width = size.width;
    final height = size.height;

    return FittedBox(
      fit: BoxFit.cover,
      child: SizedBox(width: width, height: height, child: child),
    );
  }
}