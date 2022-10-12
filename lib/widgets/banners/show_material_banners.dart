import 'package:flutter/material.dart';
class ShowMaterialBanner extends StatelessWidget {
  final double elevation;
  final String content;
  final Color bgColor;
  final Color contentColor;
  final IconData icon;
  final Color dismissColor;
  final Color iconColor;
  const ShowMaterialBanner({
    Key? key,
    this.elevation = 5,
    required this.content,
    required this.bgColor,
    required this.dismissColor,
    required this.icon,
    required this.iconColor,
    required this.contentColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (() {
        ScaffoldMessenger.of(context).showMaterialBanner(
          MaterialBanner(
            content: Text(
              content,
              style: TextStyle(color: contentColor),
            ),
            leading: Icon(
              icon,
              color: iconColor,
            ),
            elevation: elevation,
            backgroundColor: bgColor,
            actions: [
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                },
                child: Text(
                  'dismiss',
                  style: TextStyle(color: dismissColor),
                ),
              ),
            ],
          ),
        );
      }),
      child: const Text('open'),
    );
  }
}