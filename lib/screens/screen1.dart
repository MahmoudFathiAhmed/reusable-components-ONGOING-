import 'package:flutter/material.dart';
import 'package:my_reusable_components/resources/asset_manager.dart';
import 'package:my_reusable_components/resources/color_manager.dart';
import 'package:my_reusable_components/video_player/my_video_player.dart';
import 'package:my_reusable_components/widgets/banners/show_material_banners.dart';
import 'package:my_reusable_components/widgets/buttons/default_linear_gradient_button.dart';
import 'package:my_reusable_components/widgets/buttons/diamond_button.dart';
import 'package:my_reusable_components/widgets/buttons/square_icon_text_button.dart';
import 'package:my_reusable_components/widgets/cards/blur_transparent_card.dart';
import 'package:my_reusable_components/widgets/cards/text_over_image.dart';
import 'package:my_reusable_components/widgets/cards/text_under_image.dart';
import 'package:my_reusable_components/widgets/headers/default_header.dart';
import 'package:my_reusable_components/widgets/rating/rating_card_widget.dart';
import 'package:my_reusable_components/widgets/speak/speak_text.dart';
import 'package:my_reusable_components/widgets/tables/dummy_table.dart';
import 'package:my_reusable_components/widgets/lines/progress_line.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const DummyTable(
                  tableBackgroundColor: Colors.amber,
                  radius: 10,
                ),
                const SizedBox(height: 10),
                ShowMaterialBanner(
                  content: 'subscribe',
                  contentColor: Colors.white,
                  bgColor: Colors.black.withOpacity(0.5),
                  dismissColor: Colors.white,
                  icon: Icons.ac_unit,
                  iconColor: Colors.white,
                ),
                const SizedBox(height: 10),
                ProgressiveLine(color: AppColors.paleGreen, percentage: 70),
                const SizedBox(height: 10),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     SquareIconTextButton(
                       onTap: (){},
                      icon: Icons.rocket_launch_outlined,
                      iconColor: AppColors.paleGreen,
                      text: 'Rocket',
                       borderColor: Colors.amber,
                       borderWidth: 2,
                       radius: 10,
                ),
                DiamondButton(
                      svgIcon: AppImages.musicIc,
                      onTap: () {},
                      backgroundColor: AppColors.paleGreen,
                      iconColor: AppColors.offWhite,
                ),
                SpeakTextWidget(text: 'text'),
                   ],
                 ),
                const SizedBox(height: 10),
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
                DefaultHeader(
                  begin: 'Title',
                  end: 'See all',
                  beginColor: AppColors.blue,
                  endColor: AppColors.paleGreen,
                  endOnTap: () {},
                ),
                const SizedBox(height: 10),
                TextUnderImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1664710476481-1213c456c56c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80',
                  cardHeight: 230,
                  imageHeight: 130,
                  title:
                      'anythinganythinganythinganythinganythinganythinganythinganythinganythinganything',
                  source: 'anything',
                  textColor: Colors.white,
                  bgColor: AppColors.paleGreen,
                ),
                const SizedBox(height: 10),
                TextOverImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1664710476481-1213c456c56c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80',
                  text:
                      'AnythingAnythingAnythingAnythingAnythingAnythingAnythingAnythingAnythingAnything ',
                  height: 250,
                  width: 350,
                  textColor: AppColors.offWhite,
                  textFontSize: 24,
                ),
                const SizedBox(height: 10),
                RatingCardWidget(
                  barColor: AppColors.paleGreen,
                  bgColor: AppColors.darkGrey,
                  textColor: AppColors.white.withOpacity(0.9),
                  locationRating: 5,
                  priceRating: 6,
                  roomRating: 7,
                  servicesRating: 8,
                ),
                const SizedBox(height: 10),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.network(
                        'https://marketplace.canva.com/Ic2KM/MAE3X1Ic2KM/1/s2/canva-woman-at-outdoor-iftar-picnic-MAE3X1Ic2KM.jpg',
                        width: double.maxFinite,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: BlurTransparentCard(
                        color: AppColors.black,
                        child: const Center(child: Text('mahmoud')),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const MyVideoPlayer(videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
