import 'package:flutter/material.dart';
//NOTE: default font size ==> 14
class DefaultTextButton extends StatelessWidget {
  final VoidCallback onClick;
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;

  const DefaultTextButton({Key? key,
    required this.onClick,
    required this.text,
    required this.textColor,
    this.fontSize = 14,
    required this.fontWeight,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onClick,
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
    );
  }
}
