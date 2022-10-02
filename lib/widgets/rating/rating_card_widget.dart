import 'package:flutter/material.dart';
import 'package:my_reusable_components/widgets/rating/rating_bar.dart';

class RatingCardWidget extends StatelessWidget {
  final Color barColor;
  final Color textColor;
  final Color bgColor;
  final double height;
  final double roomRating;
  final double servicesRating;
  final double locationRating;
  final double priceRating;

  const RatingCardWidget({
    super.key,
    required this.roomRating,
    required this.servicesRating,
    required this.locationRating,
    required this.priceRating,
    required this.barColor,
    required this.textColor,
    required this.bgColor, this.height = 160,
  });

  @override
  Widget build(BuildContext context) {
    double overallRating =
        (roomRating + servicesRating + locationRating + priceRating) / 4;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    overallRating.toStringAsFixed(1),
                    style: TextStyle(
                      color: barColor,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "room",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "services",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "location",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "price",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Overall rating',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(height: 5),
                  const SizedBox(
                    height: 7,
                  ),
                  RatingBar(
                    rate: roomRating,
                    color: barColor,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  RatingBar(
                    rate: servicesRating,
                    color: barColor,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  RatingBar(
                    rate: locationRating,
                    color: barColor,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  RatingBar(
                    rate: priceRating,
                    color: barColor,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
