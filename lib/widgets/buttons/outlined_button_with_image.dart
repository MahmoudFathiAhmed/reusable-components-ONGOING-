import 'package:flutter/material.dart';
//NOTE: default width ==> double.infinity
//NOTE: default background color ==> white
//NOTE: default font size ==> 24
//NOTE: default font weight ==> FontWeight.w500
class OutlinedButtonWithImage extends StatelessWidget {
  final Color backgroundColor;
  final String imagePath;
  final double imageHeight;
  final double spaceBetweenImageAndText;
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

  const OutlinedButtonWithImage({
    Key? key,
    this.backgroundColor = Colors.white,
    required this.text,
    required this.textColor,
    this.fontSize = 24,
    this.fontWeight = FontWeight.w500,
    this.width = double.infinity,
    this.height =48,
    required this.onclick,
    required this.borderRadius,
    required this.borderColor,
    this.borderWidth = 2,
    required this.imagePath,
    this.imageHeight = 18,
    this.spaceBetweenImageAndText = 10,
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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          )
        ),
        onPressed: onclick,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: imageHeight,
            ),
            SizedBox(
              width: spaceBetweenImageAndText,
            ),
            Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
