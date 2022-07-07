import 'package:flutter/material.dart';
import 'package:my_reusable_components/resources/color_manager.dart';
import 'package:my_reusable_components/widgets/default_linear_gradient_button.dart';
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
          children:  [
            const ProgressLine(color: Colors.amberAccent, percentage: 50),
            const SizedBox(
              height: 5,
            ),
            const DummyTable(
              tableBackgroundColor: Colors.amber,
              radius: 10,
            ),
            const SizedBox(height: 10,),
            DefaultLinearGradientButton(
              height: 49,
              width: 245,
              textColor: Colors.white,
              text: 'Login',
              fontWeight: FontWeight.w500,
              onclick: (){},
              borderRadius: 6,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.red,
                Colors.red.withOpacity(.6),
                Colors.blue,
                Colors.blue.withOpacity(.6),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
