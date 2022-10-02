import 'package:flutter/material.dart';

class DefaultHeader extends StatelessWidget {
  final String begin;
  final double beginFontSize;
  final Color beginColor;
  final FontWeight beginFontWeight;
  final String end;
  final double endFontSize;
  final Color endColor;
  final FontWeight endFontWeight;

  const DefaultHeader({
    Key? key,
    required this.begin,
    this.beginFontSize = 18,
    required this.beginColor,
    this.beginFontWeight = FontWeight.w400,
    required this.end,
    this.endFontSize = 18,
    required this.endColor,
    this.endFontWeight = FontWeight.w400,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          begin,
          style: TextStyle(
            color: beginColor,
            fontSize: beginFontSize,
            fontWeight: beginFontWeight,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            end,
            style: TextStyle(
              color: endColor,
              fontSize: endFontSize,
              fontWeight: endFontWeight,
            ),
          ),
        ),
      ],
    );
  }
}
