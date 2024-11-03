import 'package:flutter/material.dart';
import 'package:video_task/app/core/theme/app_colors.dart';
import 'package:video_task/app/core/theme/app_text_theme_extension.dart';
import 'package:video_task/app/core/utils/screen_size.dart';

class ImageContainer extends StatelessWidget {
  final String text;
  final String imageUrl;
  final double width;
  final double height;
  final Icon icon;
  final bool showBorder;

  const ImageContainer({
    super.key,
    required this.text,
    required this.imageUrl,
    required this.width,
    required this.height,
    required this.icon,
    this.showBorder = true,
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
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: ContainerSS(
              decoration: BoxDecoration(
                color: AppColors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsetsSS.symmetric(horizontal: 2, vertical: 1),
              child: Text(
                text,
                style: Theme.of(context).xTextTheme.display1,
              ),
            ),
          ),
        ),
        Positioned(
          top: 25,
          right: 10,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: showBorder ? Border.all(color: AppColors.white, width: 1.5) : null,
            ),
            child: CircleAvatar(
              backgroundColor: AppColors.white.withOpacity(0.5),
              radius: 13,
              child: Icon(
                icon.icon,
                size: 20,
                color: icon.color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
