import 'package:flutter/material.dart';
import 'package:my_reusable_components/app_pract_2.dart';
import 'package:my_reusable_components/resources/asset_manager.dart';
import 'package:my_reusable_components/widgets/default_button.dart';
import 'package:my_reusable_components/widgets/default_outlined_button.dart';
import 'package:my_reusable_components/widgets/default_text_button.dart';
import 'package:my_reusable_components/widgets/default_text_form_field.dart';
import 'package:my_reusable_components/widgets/header_with_icon.dart';
import 'package:my_reusable_components/widgets/line_with_text_spacer.dart';
import 'package:my_reusable_components/widgets/onboarding_content.dart';
import 'package:my_reusable_components/widgets/outlined_button_with_icon.dart';
import 'package:my_reusable_components/widgets/outlined_button_with_image.dart';

class AppOne extends StatefulWidget {
  const  AppOne({Key? key}) : super(key: key);

  @override
  State<AppOne> createState() => _AppOneState();
}

class _AppOneState extends State<AppOne> {
  final TextEditingController controller = TextEditingController();
   final formKey = GlobalKey<FormState>();

  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator({required int numPages}) {
    List<Widget> list = [];
    for (int i = 0; i < numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 6.0,
      width: 18.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.amberAccent.shade200 : Colors.grey.shade400,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: const [
                    OnBoardingContent(
                      image: AppImages.bicycleImg,
                      title: 'title1',
                      subtitle: 'subtitle1',
                    ),
                    OnBoardingContent(
                      image: AppImages.bicycleImg,
                      title: 'title2',
                      subtitle: 'subtitle2',
                    ),
                    OnBoardingContent(
                      image: AppImages.bicycleImg,
                      title: 'title3',
                      subtitle: 'subtitle3',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              //indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(numPages: 3),
              ),
              const SizedBox(
                height: 10,
              ),
              DefaultTextFormField(
                label: 'anything',
                radius: 10,
                type: TextInputType.text,
                controller: controller,
                validation: 'Add your data please',
                prefixIcon: const SizedBox(),
                suffixIcon: const SizedBox(),
                contentPadding: 10,
                // onChanged: (String a){},
                borderColor: Colors.deepPurple,
                fillColor: Colors.deepPurple.withOpacity(0.1),
                isFilled: true,
              ),
              const SizedBox(
                height: 5,
              ),
              DefaultButton(
                backgroundColor: Colors.deepPurple,
                text: 'Enter anything',
                fontSize: 16,
                textColor: Colors.white,
                onclick: () {
                  if(formKey.currentState!.validate()){

                  }
                },
                borderRadius: 14,
                fontWeight: FontWeight.w200,
                height: 34,
              ),
              const SizedBox(
                height: 5,
              ),
              HeaderWithIcon(
                title: 'Anything',
                titleColor: Colors.deepPurple,
                titleFontWeight: FontWeight.w300,
                titleSize: 16,
                spaceBetweenIconAndName: 3,
                nameBesideIcon: 'Help',
                icon: Icons.help,
                iconSize: 18,
                iconColor: Colors.deepPurple.shade300,
                nameBesideIconColor: Colors.deepPurple.shade300,
                nameBesideIconSize: 13,
              ),
              const SizedBox(
                height: 5,
              ),
              LineWithTextSpacer(
                textColor: Colors.deepPurple,
                text: 'OR',
                lineColor: Colors.deepPurple.shade100,
                textFontWeight: FontWeight.w300,
                textSize: 16,
              ),
              const SizedBox(
                height: 5,
              ),
              OutlinedButtonWithImage(
                imageHeight: 18,
                text: 'Go to App Two',
                textColor: Colors.deepPurple,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 34,
                onclick: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const AppTwo()));
                },
                borderRadius: 0,
                borderColor: Colors.deepPurple,
                borderWidth: 2,
                imagePath: AppImages.googleIc,
              ),
              const SizedBox(
                height: 5,
              ),
              OutlinedButtonWithIcon(
                  text: 'Anything',
                  textColor: Colors.deepPurple,
                  fontWeight: FontWeight.w500,
                  height: 34,
                  fontSize: 16,
                  onclick: () {},
                  borderRadius: 20,
                  borderColor: Colors.deepPurple,
                  borderWidth: 2,
                  icon: Icons.bedtime_outlined,
                  iconColor: Colors.deepPurple),
              const SizedBox(
                height: 5,
              ),
              DefaultOutlinedButton(
                text: 'Anything',
                textColor: Colors.deepPurple,
                fontWeight: FontWeight.w500,
                height: 34,
                fontSize: 16,
                onclick: () {},
                borderRadius: 10,
                borderColor: Colors.deepPurple,
                borderWidth: 2,
              ),
              const SizedBox(
                height: 5,
              ),
              DefaultTextButton(
                onClick: () {},
                text: "anything",
                textColor: Colors.deepPurple,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

