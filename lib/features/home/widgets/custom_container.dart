import 'package:flutter/material.dart';
import 'package:video_task/app/core/theme/app_colors.dart';
import 'package:video_task/app/core/theme/app_text_theme_extension.dart';
import 'package:video_task/app/core/utils/screen_size.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final Color color;
  final double width;
  final double height;

  const CustomContainer({
    super.key,
    required this.text,
    required this.color,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ContainerSS(
          width: width,
          height: height,
          margin: const EdgeInsetsSS.only(top: 2, left: 4),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsetsSS.only(left: 5, bottom: 2),
              child: Text(
                text,
                style: Theme.of(context).xTextTheme.display1,
              ),
            ),
          ),
        ),
        Positioned(
          top: 25,
          right: 13,
          child: ContainerSS(
            width: 3,
            height: 0.3,
            decoration: const BoxDecoration(
              color: AppColors.white,
            ),
          ),
        ),
        Positioned(
          top: 25,
          right: 13,
          child: ContainerSS(
            width: 0.5,
            height: 1.5,
            decoration: const BoxDecoration(
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
