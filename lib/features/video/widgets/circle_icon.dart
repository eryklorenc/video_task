import 'package:flutter/material.dart';
import 'package:video_task/app/core/theme/app_colors.dart';
import 'package:video_task/app/core/utils/screen_size.dart';

class CircleIcon extends StatelessWidget {
  final IconData icon;

  const CircleIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ContainerSS(
      padding: const EdgeInsetsSS.all(2),
      margin: const EdgeInsetsSS.only(left: 2),
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.3),
        shape: BoxShape.circle,
      ),
      child: Icon(icon),
    );
  }
}
