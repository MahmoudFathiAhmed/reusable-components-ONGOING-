import 'package:flutter/material.dart';

//NOTE: default width ==> double.infinity
class DefaultLinearGradientButton extends StatelessWidget {
  final List<Color> colors;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final double width;
  final double height;
  final VoidCallback onclick;
  final double borderRadius;

  const DefaultLinearGradientButton(
      {Key? key,
      required this.text,
      required this.textColor,
      this.width = double.infinity,
      required this.onclick,
      required this.borderRadius,
      this.fontSize = 24,
      required this.fontWeight,
      required this.height,
      required this.colors,
      required this.begin,
      required this.end})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: begin,
          end: end,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: MaterialButton(
        onPressed: onclick,
        child: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
