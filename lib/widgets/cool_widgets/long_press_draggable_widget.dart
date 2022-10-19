import 'package:flutter/material.dart';

class LongPressDraggableWidget extends StatefulWidget {
  const LongPressDraggableWidget({super.key});

  @override
  State<LongPressDraggableWidget> createState() =>
      _LongPressDraggableWidgetState();
}

class _LongPressDraggableWidgetState extends State<LongPressDraggableWidget> {
  Offset _offset = const Offset(250, 250);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Positioned(
                left: _offset.dx,
                top: _offset.dy,
                child: LongPressDraggable(
                  feedback: Image.network(
                    'https://images.unsplash.com/photo-1665572787524-3121992b5772?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxN3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                    height: 200,
                    color: Colors.orange,
                    colorBlendMode: BlendMode.colorBurn,
                  ),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1665572787524-3121992b5772?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxN3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                    height: 200,
                  ),
                  onDragEnd: (details) {
                    setState(() {
                      double adgustment = MediaQuery.of(context).size.height -
                          constraints.maxHeight;
                      _offset = Offset(
                          details.offset.dx, details.offset.dy - adgustment);
                    });
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
