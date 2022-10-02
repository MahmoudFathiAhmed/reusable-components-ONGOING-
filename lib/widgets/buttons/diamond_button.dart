import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class DiamondButton extends StatelessWidget {
  final String svgIcon;
  final Color backgroundColor;
  final Color iconColor;
  final double sideLength;
  final double iconSize;
  final VoidCallback onTap;
  final double angle;
  final double radius;
  final double padding;

  const DiamondButton({
    Key? key,
    required this.svgIcon,
    required this.onTap,
    required this.backgroundColor,
    required this.iconColor,
    this.padding = 10,
    this.sideLength = 65,
    this.iconSize = 19,
    this.radius = 18,
    this.angle = math.pi / 4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Transform.rotate(
        angle: -angle,
        child: Container(
          height: sideLength,
          width: sideLength,
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: Transform.rotate(
              angle: angle,
              child: SvgPicture.asset(
                svgIcon,
                height: iconSize,
                width: iconSize,
                color: iconColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
