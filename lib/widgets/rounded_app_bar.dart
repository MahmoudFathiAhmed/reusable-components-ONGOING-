import 'package:flutter/material.dart';

class RoundedAppBar extends StatelessWidget {
  final double radius;
  final Color backgroundColor;
  final double elevation;
  final Widget title;
  final bool isCenterTitle;

  const RoundedAppBar(
      {Key? key,
      this.radius = 10,
      required this.backgroundColor,
      required this.elevation,
      required this.title,
      this.isCenterTitle = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(radius)),
      ),
      elevation: 0,
      backgroundColor: backgroundColor,
      title: title,
      centerTitle: isCenterTitle,
    );
  }
}
