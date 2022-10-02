import 'package:flutter/material.dart';
//NOTE: default width ==> double.infinity
//NOTE: default background color ==> white
//NOTE: default font size ==> 24
//NOTE: default font weight ==> FontWeight.w500
class OutlinedButtonWithIcon extends StatelessWidget {
  final Color backgroundColor;
  final IconData icon;
  final Color iconColor;
  final double iconSize;
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

  const OutlinedButtonWithIcon({
    Key? key,
    this.backgroundColor=Colors.white,
    required this.text,
    required this.textColor,
    this.fontSize = 24,
    this.fontWeight =FontWeight.w500,
    this.width = double.infinity,
    this.height = 48,
    required this.onclick,
    required this.borderRadius,
    required this.borderColor,
    this.borderWidth =2,
    required this.icon,
    required this.iconColor,
    this.iconSize = 24,
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
      child: OutlinedButton.icon(
        icon: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
        label: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          side: BorderSide(
            color: borderColor,
            width: borderWidth,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          )
        ),
        onPressed: onclick,
      ),
    );
  }
}
