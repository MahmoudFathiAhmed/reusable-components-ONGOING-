import 'package:flutter/material.dart';
import 'package:my_reusable_components/widgets/dummy_table.dart';
import 'package:my_reusable_components/widgets/progress_line.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            ProgressLine(color: Colors.amberAccent, percentage: 50),
            SizedBox(
              height: 5,
            ),
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
