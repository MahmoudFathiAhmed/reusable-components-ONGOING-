import 'package:flutter/material.dart';
import 'package:my_reusable_components/resources/asset_manager.dart';
import 'package:my_reusable_components/resources/color_manager.dart';
import 'package:my_reusable_components/widgets/buttons/default_linear_gradient_button.dart';
import 'package:my_reusable_components/widgets/buttons/diamond_button.dart';
import 'package:my_reusable_components/widgets/tables/dummy_table.dart';
import 'package:my_reusable_components/widgets/lines/progress_line.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const ProgressLine(color: Colors.amberAccent, percentage: 50),
              const SizedBox(height: 5),
              const DummyTable(
                tableBackgroundColor: Colors.amber,
                radius: 10,
              ),
              const SizedBox(height: 10),
              DiamondButton(
                svgIcon: AppImages.musicIc,
                onTap: () {},
                backgroundColor: AppColors.paleGreen,
                iconColor: AppColors.offWhite,
              ),
              const SizedBox(height: 10),
              DefaultLinearGradientButton(
                width: 245,
                textColor: Colors.white,
                text: 'Login',
                onclick: () {},
                borderRadius: 6,
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
      ),
    );
  }
}
