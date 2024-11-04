import 'package:flutter/material.dart';
import 'package:video_task/app/core/theme/app_text_theme_extension.dart';
import 'package:video_task/app/core/utils/screen_size.dart';
import 'package:video_task/features/recommended/widgets/recommended_section.dart';
import 'package:video_task/generated/l10n.dart';

class RecommendedPage extends StatelessWidget {
  const RecommendedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          S.of(context).logo,
          style: Theme.of(context).xTextTheme.body2,
        ),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.favorite_border_outlined),
          SizedBox(width: 10),
          Icon(Icons.search),
          SizedBox(width: 10),
        ],
      ),
      body: const Padding(
        padding: EdgeInsetsSS.only(top: 2.5),
        child: SingleChildScrollView(
          child: RecommendedSection(),
        ),
      ),
    );
  }
}
