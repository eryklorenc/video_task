import 'package:flutter/material.dart';
import 'package:video_task/app/core/const/const.dart';
import 'package:video_task/app/core/theme/app_colors.dart';
import 'package:video_task/app/core/theme/app_text_theme_extension.dart';
import 'package:video_task/app/core/utils/screen_size.dart';
import 'package:video_task/features/recommended/widgets/custom_container.dart';
import 'package:video_task/features/recommended/widgets/down_arrow_button.dart';
import 'package:video_task/features/recommended/widgets/image_container.dart';
import 'package:video_task/features/video/video_page.dart';
import 'package:video_task/generated/l10n.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsetsSS.only(top: 2, left: 4),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    S.of(context).recommended,
                    style: Theme.of(context).xTextTheme.body1,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 30,
                child: DownArrowButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const VideoPage()),
                    );
                  },
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  CustomContainer(
                    width: 45,
                    height: 12,
                    text: S.of(context).plan_your_trip,
                    color: AppColors.customGreen,
                  ),
                  CustomContainer(
                    width: 45,
                    height: 25,
                    text: S.of(context).trails,
                    color: AppColors.lightBlue,
                  ),
                  ImageContainer(
                    text: S.of(context).hours,
                    imageUrl: Const.imageUrl1,
                    width: 45,
                    height: 20,
                    icon: const Icon(
                      Icons.favorite,
                      color: AppColors.white,
                    ),
                  ),
                  ImageContainer(
                    text: S.of(context).hours,
                    imageUrl: Const.imageUrl2,
                    width: 45,
                    height: 20,
                    icon: const Icon(
                      Icons.favorite,
                      color: AppColors.customGreen,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageContainer(
                    text: S.of(context).hours,
                    imageUrl: Const.imageUrl3,
                    width: 45,
                    height: 25,
                    icon: const Icon(
                      Icons.favorite_border,
                      color: AppColors.white,
                    ),
                    showBorder: false,
                  ),
                  ImageContainer(
                    text: S.of(context).hours,
                    imageUrl: Const.imageUrl4,
                    width: 45,
                    height: 25,
                    icon: const Icon(
                      Icons.favorite_border,
                      color: AppColors.white,
                    ),
                    showBorder: false,
                  ),
                  ImageContainer(
                    text: S.of(context).hours,
                    imageUrl: Const.imageUrl5,
                    width: 45,
                    height: 25,
                    icon: const Icon(
                      Icons.favorite_border,
                      color: AppColors.white,
                    ),
                    showBorder: false,
                  ),
                  ImageContainer(
                    text: S.of(context).hours,
                    imageUrl: Const.imageUrl2,
                    width: 45,
                    height: 25,
                    icon: const Icon(
                      Icons.favorite_border,
                      color: AppColors.white,
                    ),
                    showBorder: false,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
