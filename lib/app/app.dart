import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:video_task/app/core/theme/app_colors.dart';
import 'package:video_task/app/core/theme/app_text_theme_extension.dart';
import 'package:video_task/app/core/utils/injection_container.dart';
import 'package:video_task/app/core/utils/screen_size.dart';
import 'package:video_task/features/video/cubit/video_cubit.dart';
import 'package:video_task/features/video/video_page.dart';
import 'package:video_task/generated/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    ScreenSize.initSingleton(context);
    return MaterialApp(
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.deepPurple),
        useMaterial3: true,
        extensions: [
          AppTextThemeExtension.initialize(),
        ],
      ),
      home: BlocProvider(
        create: (context) => getIt<VideoCubit>(),
        child: BlocBuilder<VideoCubit, VideoState>(
          builder: (context, state) {
            return const VideoPage();
          },
        ),
      ),
    );
  }
}
