import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_reusable_components/app_pract_1.dart';
import 'package:my_reusable_components/resources/asset_manager.dart';
// import 'package:my_reusable_components/widgets/rounded_bottom_nav_bar.dart';
import 'package:my_reusable_components/widgets/side_menu.dart';
import 'package:my_reusable_components/screens/screen1.dart';
import 'package:my_reusable_components/screens/screen2.dart';
import 'package:my_reusable_components/screens/screen3.dart';
// import 'package:my_reusable_components/screens/screen4.dart';

class AppTwo extends StatefulWidget {
  const AppTwo({Key? key}) : super(key: key);

  @override
  State<AppTwo> createState() => _AppTwoState();
}
class _AppTwoState extends State<AppTwo> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        child: const Icon(Icons.dark_mode),
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: const [
            Icons.account_circle,
            Icons.apple_rounded,
            Icons.sunny,
            Icons.facebook,
            // Icons.access_alarm,
          ],
          activeIndex: currentIndex,
          onTap: _onItemTapped,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          gapLocation: GapLocation.center,
          backgroundColor: Colors.amber,


        )
        // RoundedBottomNavBar(
        //   radius: 25,
        //   elevation: 0,
        //   iconColor: Colors.black,
        //   iconSize: 23,
        //   backgroundColor: Colors.amber,
        //   activeIconColor: const Color(0xff0d3562),
        //   activeIconSize: 28,
        //   onTab: _onItemTapped,
        //   currentIndex: currentIndex,
        // )
      ,
        drawer: const SideMenu(
          backgroundColor: Colors.amber,
          headerImage: AppImages.bicycleImg,
          titleColor: Colors.black,
          iconColor: Colors.black,
          width: 180,
          radius: 10,
        ),
        // appBar: AppBar(
        //   toolbarHeight: 40,
        //   shape: const RoundedRectangleBorder(
        //     borderRadius: BorderRadius.all(Radius.circular(30)),
        //     // borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        //   ),
        //   elevation: 0,
        // ),
        body: IndexedStack(
          index: currentIndex,
          children: tabs,
        ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  var tabs = [
    const Screen1(),
    const Screen2(),
    const Screen3(),
    const AppOne(),
    // const Screen4(),
  ];
}
