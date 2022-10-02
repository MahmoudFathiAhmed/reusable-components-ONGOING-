import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  final double rate;
  final Color color;
  const RatingBar({super.key, required this.rate, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const  EdgeInsets.only(bottom: 8),
      width: (MediaQuery.of(context).size.width * rate) / 17,
      height: 6,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10)),
    );
  }
}