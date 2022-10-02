import 'dart:ui';

import 'package:flutter/material.dart';

class BlurTransparentCard extends StatelessWidget {
  final double height;
  final Widget child;
  final double sigmaX;
  final double sigmaY;
  final double opacity;
  final double radius;
  final double padding;
  final Color color;

  const BlurTransparentCard({
    Key? key,
    required this.child,
    required this.color,
    this.height = 180,
    this.opacity = 0.3,
    this.radius = 20,
    this.padding = 20,
    this.sigmaX = 1.0,
    this.sigmaY = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
        child: Container(
          padding: EdgeInsets.all(padding),
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: color.withOpacity(opacity),
            borderRadius: BorderRadius.circular(radius),
          ),
          child: child,
        ),
      ),
    );
  }
}
