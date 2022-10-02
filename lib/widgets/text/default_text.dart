import 'package:flutter/material.dart';

//(overflow and max lines [NOT ADDED])
//text style may replaced by theme.of(context) directly
//default text align ==> center
class DefaultText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final Color color;
  final double fontSize;
  final TextAlign textAlign;

  const DefaultText(
      {Key? key,
      required this.text,
      required this.fontWeight,
      required this.color,
      required this.fontSize,
      this.textAlign = TextAlign.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
