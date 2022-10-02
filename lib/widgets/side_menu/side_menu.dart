import 'package:flutter/material.dart';


class SideMenu extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final String headerImage;
  final double titleFontSize;
  final Color titleColor;
  final double iconSize;
  final double width;
  final double radius;
  const SideMenu({
    Key? key,
    required this.backgroundColor,
    required this.iconColor,
    required this.headerImage,
    this.iconSize = 24,
    this.titleFontSize = 14,
    this.width = 304.0,
    required this.titleColor,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: backgroundColor,
      width: width,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(headerImage,fit: BoxFit.cover,),
            ),
            DrawerListTile(
              title: 'add',
              icon: Icons.add,
              iconColor: iconColor,
              titleColor: titleColor,
              titleFontSize: titleFontSize,
              iconSize: iconSize,
              press: () {},
            ),
            DrawerListTile(
              title: 'remove',
              icon: Icons.remove,
              iconColor: iconColor,
              titleColor: titleColor,
              titleFontSize: titleFontSize,
              iconSize: iconSize,
              press: () {},
            ),
            DrawerListTile(
              title: 'sunny',
              icon: Icons.sunny,
              iconColor: iconColor,
              titleColor: titleColor,
              titleFontSize: titleFontSize,
              iconSize: iconSize,
              press: () {},
            ),
            DrawerListTile(
              title: 'dark mode',
              icon: Icons.dark_mode,
              iconColor: iconColor,
              titleColor: titleColor,
              titleFontSize: titleFontSize,
              iconSize: iconSize,
              press: () {},
            ),
            DrawerListTile(
              title: 'help',
              icon: Icons.help,
              iconColor: iconColor,
              titleColor: titleColor,
              titleFontSize: titleFontSize,
              iconSize: iconSize,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.press,
    required this.titleColor,
    required this.iconColor,
    this.iconSize = 24,
    this.titleFontSize = 14,
  }) : super(key: key);
  final String title;
  final Color titleColor;
  final double titleFontSize;
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      style: ListTileStyle.drawer,
      leading: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
      title: Text(
        title,
        style: TextStyle(color: titleColor, fontSize: titleFontSize),
      ),
      horizontalTitleGap: 0,
      onTap: press,
    );
  }
}
