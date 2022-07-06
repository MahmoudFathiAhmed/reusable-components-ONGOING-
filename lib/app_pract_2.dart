import 'package:flutter/material.dart';
import 'package:my_reusable_components/resources/asset_manager.dart';
import 'package:my_reusable_components/widgets/dummy_table.dart';
import 'package:my_reusable_components/widgets/progress_line.dart';
import 'package:my_reusable_components/widgets/side_menu.dart';

class AppTwo extends StatefulWidget {
  const AppTwo({Key? key}) : super(key: key);

  @override
  State<AppTwo> createState() => _AppTwoState();
}

class _AppTwoState extends State<AppTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(
        backgroundColor: Colors.amber,
        headerImage: AppImages.bicycleImg,
        titleColor: Colors.black,
        iconColor: Colors.black,
        width: 180,
        radius: 10,
      ),
      appBar: AppBar(
        toolbarHeight: 40,

        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          // borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const[
            ProgressLine(color: Colors.amberAccent, percentage: 50),
            SizedBox(height: 5,),
            DummyTable(
              tableBackgroundColor: Colors.amber,
              radius: 10,
            ),
          ],
        ),
      ),
    );
  }
}
