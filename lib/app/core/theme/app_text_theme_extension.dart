import 'package:flutter/material.dart';
import 'package:video_task/app/core/theme/app_colors.dart';

extension XTheme on ThemeData {
  AppTextThemeExtension get xTextTheme => extension<AppTextThemeExtension>()!;
}

class AppTextThemeExtension extends ThemeExtension<AppTextThemeExtension> {
  AppTextThemeExtension({
    required this.display0,
    required this.display1,
    required this.body1,
    required this.body2,
  });
  final TextStyle display0;
  final TextStyle display1;
  final TextStyle body1;
  final TextStyle body2;
  factory AppTextThemeExtension.initialize() => AppTextThemeExtension(
        display0: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        display1: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w800,
          color: AppColors.white,
        ),
        body1: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        body2: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 25,
        ),
      );
  @override
  ThemeExtension<AppTextThemeExtension> copyWith({
    TextStyle? display0,
    TextStyle? display1,
    TextStyle? body1,
    TextStyle? body2,
  }) {
    return AppTextThemeExtension(
      display0: display0 ?? this.display0,
      display1: display1 ?? this.display1,
      body1: body1 ?? this.body1,
      body2: body2 ?? this.body2,
    );
  }

  @override
  ThemeExtension<AppTextThemeExtension> lerp(
    covariant ThemeExtension<AppTextThemeExtension>? other,
    double t,
  ) {
    if (other == null || t == 0.0) return this;
    return other;
  }
}
