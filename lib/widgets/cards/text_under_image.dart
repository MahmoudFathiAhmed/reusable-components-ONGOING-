import 'package:flutter/material.dart';
import 'package:my_reusable_components/resources/color_manager.dart';

class TextUnderImage extends StatelessWidget {
  final double cardHeight;
  final String imageUrl;
  final double imageHeight;
  final double radius;
  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  final String source;
  final Color textColor;
  final Color bgColor;
  final double sourceFontSize;
  final Color sourceTextColor;

  const TextUnderImage({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.source,
    required this.cardHeight,
    required this.imageHeight,
    this.radius = 15,
    this.fontSize = 16,
    required this.textColor,
    required this.bgColor,
    this.sourceFontSize = 15,
    this.sourceTextColor = Colors.white,
    this.fontWeight = FontWeight.bold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: cardHeight,
      child: Card(
        color: bgColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: imageHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(radius),
                    topRight: Radius.circular(radius)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    imageUrl,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: textColor,
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'source: $source',
                    style: TextStyle(
                      color: sourceTextColor,
                      fontSize: sourceFontSize,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
