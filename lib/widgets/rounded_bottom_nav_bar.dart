import 'package:flutter/material.dart';

class RoundedBottomNavBar extends StatelessWidget {
  final double radius;
  final double elevation;
  final Color backgroundColor;
  final Color activeIconColor;
  final double activeIconSize;
  final Color iconColor;
  final double iconSize;
  final ValueChanged<int> onTab;
  final int currentIndex;

  const RoundedBottomNavBar(
      {Key? key,
      required this.radius,
      required this.backgroundColor,
      required this.activeIconColor,
      required this.activeIconSize,
      required this.iconColor,
      required this.iconSize,
      required this.elevation,
      required this.onTab,
      required this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(radius),
            topLeft: Radius.circular(radius),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0,
              blurRadius: 8,
              blurStyle: BlurStyle.solid,
            ),
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(radius),
          topLeft: Radius.circular(radius),
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(
            color: activeIconColor,
            size: activeIconSize,
          ),
          unselectedIconTheme: IconThemeData(
            color: iconColor,
            size: iconSize,
          ),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: backgroundColor,
          elevation: elevation,
          currentIndex: currentIndex,
          onTap: onTab,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.border_all,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.facebook,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
