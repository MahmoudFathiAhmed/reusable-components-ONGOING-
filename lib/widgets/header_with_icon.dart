import 'package:flutter/material.dart';
import 'package:my_reusable_components/widgets/default_text.dart';

class HeaderWithIcon extends StatelessWidget {
  final String title;
  final Color titleColor;
  final double titleSize;
  final FontWeight titleFontWeight;
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final double spaceBetweenIconAndName;
  final String nameBesideIcon;
  final Color nameBesideIconColor;
  final double nameBesideIconSize;

  const HeaderWithIcon({
    Key? key,
    required this.title,
    required this.titleColor,
    required this.titleSize,
    required this.titleFontWeight,
    required this.icon,
    this.iconSize = 24,
    required this.nameBesideIcon,
    required this.nameBesideIconColor,
    required this.nameBesideIconSize,
    required this.spaceBetweenIconAndName,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DefaultText(
            text: title,
            fontWeight: titleFontWeight,
            color: titleColor,
            fontSize: titleSize,
            textAlign: TextAlign.center),
        Row(
          children: [
            DefaultText(
                text: nameBesideIcon,
                fontWeight: FontWeight.w500,
                color: nameBesideIconColor,
                fontSize: nameBesideIconSize,
                textAlign: TextAlign.center),
            SizedBox(
              width: spaceBetweenIconAndName,
            ),
            Icon(
              icon,
              color: iconColor,
              size: iconSize,
            ),
          ],
        )
      ],
    );
  }
}
