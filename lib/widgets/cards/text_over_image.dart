import 'package:flutter/material.dart';

class TextOverImage extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  final double radius;
  final BoxFit fit;
  final String text;
  final double textFontSize;
  final Color textColor;
  final FontWeight textFontWeight;

  const TextOverImage({
    Key? key,
    required this.imageUrl,
    required this.text,
    required this.height,
    required this.width,
    required this.textColor,
    this.textFontSize = 14,
    this.textFontWeight = FontWeight.w400,
    this.radius = 20,
    this.fit = BoxFit.cover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(radius)),
            image: DecorationImage(
              fit: fit,
              image: NetworkImage(
                imageUrl,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 20,
          ),
          child: SizedBox(
            width: width - 40,
            child: Text(
              text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: textColor,
                fontWeight: textFontWeight,
                fontSize: textFontSize,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
