import 'package:flutter/material.dart';

class SquareIconTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final double sideLength;
  final double radius;
  final double padding;
  final Color bgColor;
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final String text;
  final double textSize;
  final FontWeight fontWeight;
  final Color textColor;
  final Color borderColor;
  final double borderWidth;

  const SquareIconTextButton({
    Key? key,
    required this.onTap,
    this.sideLength = 82,
    this.radius = 5,
    this.bgColor = Colors.white,
    this.padding = 3,
    required this.icon,
    this.iconSize = 33,
    required this.iconColor,
    required this.text,
    this.fontWeight = FontWeight.bold,
    this.textColor = Colors.grey,
    this.borderColor = Colors.grey,
    this.borderWidth = 1,
    this.textSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(radius),
      child: Container(
        padding: EdgeInsets.all(padding),
        height: sideLength,
        width: sideLength,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          shape: BoxShape.rectangle,
          border: Border.all(color: borderColor, width: borderWidth),
          color: bgColor,
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: iconColor,
                size: iconSize,
              ),
              const SizedBox(height: 3),
              Text(
                text,
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: textColor,
                  fontSize: textSize,
                  fontWeight: fontWeight,
                ),
              )
            ]),
      ),
    );
  }
}
