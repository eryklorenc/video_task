import 'package:flutter/material.dart';
import 'package:video_task/app/core/theme/app_colors.dart';
import 'package:video_task/app/core/theme/app_text_theme_extension.dart';
import 'package:video_task/app/core/utils/screen_size.dart';
import 'package:video_task/features/home/widgets/custom_container.dart';
import 'package:video_task/generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Padding(
        padding: const EdgeInsetsSS.only(top: 2.5),
        child: Container(
          width: double.infinity,
          height: double.infinity,
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
                        S.of(context).polecane,
                        style: Theme.of(context).xTextTheme.body1,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 30,
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
                  ),
                ],
              ),
              CustomContainer(
                width: 45,
                height: 12,
                text: S.of(context).zaplanuj_podroz,
                color: AppColors.customGreen,
              ),
              CustomContainer(
                width: 45,
                height: 25,
                text: S.of(context).szlaki,
                color: AppColors.lightBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
