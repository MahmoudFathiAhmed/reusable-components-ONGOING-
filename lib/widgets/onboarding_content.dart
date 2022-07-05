import 'package:flutter/material.dart';
import 'package:my_reusable_components/widgets/default_text.dart';

class OnBoardingContent extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const OnBoardingContent({Key? key, required this.image, required this.title, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Image.asset(
            image,
            width: 320,),
        ),
        DefaultText(
          text: title,
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 5,),
        DefaultText(
          text: subtitle,
          color: Colors.grey,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}