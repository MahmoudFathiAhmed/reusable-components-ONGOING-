import 'package:flutter/material.dart';
import 'package:my_reusable_components/widgets/dummy_table.dart';
import 'package:my_reusable_components/widgets/progress_line.dart';

class AppTwo extends StatefulWidget {
  const AppTwo({Key? key}) : super(key: key);

  @override
  State<AppTwo> createState() => _AppTwoState();
}

class _AppTwoState extends State<AppTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
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
