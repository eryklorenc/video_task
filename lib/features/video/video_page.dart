import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';
import 'package:video_task/app/core/const/const.dart';
import 'package:video_task/app/core/utils/injection_container.dart';
import 'package:video_task/app/core/utils/screen_size.dart';
import 'package:video_task/features/recommended/recommended_page.dart';
import 'package:video_task/features/recommended/widgets/recommended_section.dart';
import 'package:video_task/features/video/cubit/video_cubit.dart';
import 'package:video_task/features/video/widgets/circle_icon.dart';
import 'package:video_task/app/core/theme/app_colors.dart';
import 'package:video_task/generated/l10n.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  VideoPageState createState() => VideoPageState();
}

class VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<VideoCubit>()
        ..initialize(Const.videoUrl, () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const RecommendedPage()),
          );
        }),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: const CircleIcon(icon: Icons.menu),
          actions: const [
            CircleIcon(icon: Icons.favorite_border_outlined),
            CircleIcon(icon: Icons.search),
          ],
        ),
        body: BlocBuilder<VideoCubit, VideoState>(
          builder: (context, state) {
            if (state.errorMessage != null) {
              return Center(
                child: Text(
                  S.of(context).error_message(state.errorMessage!),
                ),
              );
            }
            return Stack(
              children: [
                Column(
                  children: [
                    if (state.videoController != null && state.videoController!.value.isInitialized)
                      AspectRatio(
                        aspectRatio: state.videoController!.value.aspectRatio,
                        child: VideoPlayer(state.videoController!),
                      ),
                    if (state.isLoading)
                      const Padding(
                        padding: EdgeInsetsSS.only(top: 15),
                        child: Center(
                          child: CircularProgressIndicator(
                            color: AppColors.black,
                          ),
                        ),
                      ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    const Expanded(
                      child: SingleChildScrollView(
                        child: RecommendedSection(),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
