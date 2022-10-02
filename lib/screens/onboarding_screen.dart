import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_reusable_components/resources/color_manager.dart';
import 'package:my_reusable_components/widgets/buttons/default_button.dart';
import 'package:my_reusable_components/widgets/onboarding/onboarding_two/onboarding_data.dart';
import 'package:my_reusable_components/widgets/onboarding/onboarding_two/onboarding_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: CarouselSlider(
                  items: onBoardingItems
                      .map(
                        (e) => OnBoardingItem(
                        lottiePath: e.lottiePath,
                        title: e.title,
                        subTitle: e.subtitle),
                  )
                      .toList(),
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    disableCenter: true,
                    height: 480.h,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        pageIndex = index;
                      });
                    },
                    viewportFraction: 1,
                  )),
            ),
            AnimatedSmoothIndicator(
                effect: WormEffect(
                    radius: 8.h,
                    dotHeight: 8.h,
                    dotColor: Colors.grey.shade300,
                    dotWidth: 8.w),
                activeIndex: pageIndex,
                count: onBoardingItems.length),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0.h),
              child: DefaultButton(
                  height: 42.h,
                  text: 'Login',
                  onclick: () {
                    // Navigator.pushNamed(context, AppRoutingNames.signIn);
                  },
                  backgroundColor: Colors.blue,
                textColor: AppColors.paleGreen,
                borderRadius: 15,),
            ),
            SizedBox(
              height: 18.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0.h),
              child: DefaultButton(
                height: 42.h,
                text: 'Login',
                onclick: () {
                  // Navigator.pushNamed(context, AppRoutingNames.signIn);
                },
                backgroundColor: Colors.blue,
                textColor: AppColors.paleGreen,
                borderRadius: 15,),
            ),
          ],
        ));
  }
}