import 'package:flutter/material.dart';
import 'package:my_reusable_components/widgets/default_text.dart';
//NOTE: default line height ==> 1
//NOTE: default space around text ==> 10

class LineWithTextSpacer extends StatelessWidget {
  final String text;
  final Color textColor;
  final FontWeight textFontWeight;
  final double textSize;
  final double spaceAroundText;
  final double lineHeight;
  final Color lineColor;

  const LineWithTextSpacer({
    Key? key,
    required this.text,
    required this.textColor,
    required this.textFontWeight,
    required this.textSize,
    this.spaceAroundText = 10,
    this.lineHeight = 1,
    required this.lineColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: lineHeight,
            decoration: BoxDecoration(
              color: lineColor,
            ),
          ),
        ),
        SizedBox(
          width: spaceAroundText,
        ),
        DefaultText(
            text: text,
            fontWeight: textFontWeight,
            color: textColor,
            fontSize: textSize,
            textAlign: TextAlign.center),
        SizedBox(
          width: spaceAroundText,
        ),
        Expanded(
          child: Container(
            height: lineHeight,
            decoration: BoxDecoration(
              color: lineColor,
            ),
          ),
        ),
      ],
    );
  }
}
