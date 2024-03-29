import 'package:flutter/material.dart';

//NOTE: default width ==> double.infinity
class DefaultButton extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final double width;
  final double height;
  final VoidCallback onclick;
  final double borderRadius;

  const DefaultButton(
      {Key? key,
      required this.backgroundColor,
      required this.text,
      required this.textColor,
      this.width = double.infinity,
      required this.onclick,
      required this.borderRadius,
      this.fontSize = 18,
      this.fontWeight=FontWeight.w500,
      this.height = 48,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: backgroundColor),
      child: MaterialButton(
        onPressed: onclick,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
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
