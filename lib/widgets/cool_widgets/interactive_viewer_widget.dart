import 'package:flutter/material.dart';


class InterActiveViewerWidget extends StatefulWidget {
  const InterActiveViewerWidget({super.key});

  @override
  State<InterActiveViewerWidget> createState() => _InterActiveViewerWidgetState();
}

class _InterActiveViewerWidgetState extends State<InterActiveViewerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(double.infinity),
        child: Scaffold(
          appBar: AppBar(),
        ),
      ),
    );
  }
}