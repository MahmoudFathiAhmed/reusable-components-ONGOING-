import 'package:flutter/material.dart';
//NOTE: default width ==> double.infinity
//NOTE: default background color ==> white
class DefaultOutlinedButton extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final Color borderColor;
  final double fontSize;
  final double borderWidth;
  final FontWeight fontWeight;
  final double width;
  final double height;
  final VoidCallback onclick;
  final double borderRadius;

  const DefaultOutlinedButton({
    Key? key,
    this.backgroundColor=Colors.white,
    required this.text,
    required this.textColor,
    this.fontSize = 24,
    this.fontWeight =FontWeight.w500,
    this.width = double.infinity,
    required this.height,
    required this.onclick,
    required this.borderRadius,
    required this.borderColor,
    required this.borderWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: backgroundColor,
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          side: BorderSide(
            color: borderColor,
            width: borderWidth,
          ),
        ),
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
