import 'package:flutter/material.dart';
import 'package:video_task/app/core/theme/app_colors.dart';
import 'package:video_task/app/core/theme/app_text_theme_extension.dart';
import 'package:video_task/app/core/utils/screen_size.dart';
import 'package:video_task/features/home/widgets/custom_container.dart';
import 'package:video_task/features/home/widgets/image_container.dart';
import 'package:video_task/generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: Padding(
        padding: const EdgeInsetsSS.only(top: 2.5),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: SingleChildScrollView(
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
                          imageUrl: 'https://d-art.ppstatic.pl/kadry/k/r/e2/7c/5b716c5068e62_o_medium.jpg',
                          width: 45,
                          height: 20,
                          icon: const Icon(
                            Icons.favorite,
                            color: AppColors.white,
                          ),
                        ),
                        ImageContainer(
                          text: S.of(context).hours,
                          imageUrl:
                              'https://st5.depositphotos.com/26169494/64665/i/450/depositphotos_646653518-stock-photo-magic-trees-paths-forest-slovakia.jpg',
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
                          imageUrl: 'https://slaskaopinia.pl/wp-content/uploads/2024/03/most_marzec2024c.jpg',
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
                          imageUrl: 'https://d-art.ppstatic.pl/kadry/k/r/bc/75/64cb500352794_o_original.jpg',
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
                          imageUrl:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQueZHY8ez55d5yxk6JmEmEz5OJc-W8kSyARw&s',
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
                          imageUrl:
                              'https://st5.depositphotos.com/26169494/64665/i/450/depositphotos_646653518-stock-photo-magic-trees-paths-forest-slovakia.jpg',
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
          ),
        ),
      ),
    );
  }
}
