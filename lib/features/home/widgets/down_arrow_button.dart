import 'package:flutter/material.dart';
import 'package:video_task/app/core/theme/app_colors.dart';
import 'package:video_task/app/core/utils/screen_size.dart';

class DownArrowButton extends StatelessWidget {
  final VoidCallback onTap;

  const DownArrowButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ContainerSS(
        width: 12,
        height: 4,
        decoration: const BoxDecoration(
          color: AppColors.customGreen,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: const Icon(
          Icons.keyboard_arrow_down,
          size: 30,
          color: AppColors.white,
        ),
      ),
    );
  }
}
