import 'package:flutter/material.dart';

class ProgressiveLine extends StatelessWidget {
  const ProgressiveLine({
    Key? key, required this.color, required this.percentage,
  }) : super(key: key);

  final Color color;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color.withOpacity(0.3),
            borderRadius: const BorderRadius.all(Radius.circular(10),),
          ),
        ),
        LayoutBuilder(builder: (context, constraints)=>Container(
          width: constraints.maxWidth* (percentage/100),
          height: 5,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(10),),
          ),
        )),
      ],
    );
  }
}