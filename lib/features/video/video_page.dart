import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:video_task/app/core/const/const.dart';
import 'package:video_task/app/core/theme/app_colors.dart';
import 'package:video_task/app/core/utils/screen_size.dart';
import 'package:video_task/features/recommended/recommended_page.dart';
import 'package:video_task/features/recommended/widgets/recommended_section.dart';
import 'package:video_task/features/video/widgets/circle_icon.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  VideoPageState createState() => VideoPageState();
}

class VideoPageState extends State<VideoPage> {
  late VideoPlayerController _videoController;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.networkUrl(
      Uri.parse(Const.videoUrl),
    )
      ..initialize().then((_) {
        setState(() {
          _isLoading = false;
        });
        _videoController.play();
      })
      ..addListener(_videoEndListener);
  }

  @override
  void dispose() {
    _videoController.removeListener(_videoEndListener);
    _videoController.dispose();
    super.dispose();
  }

  void _videoEndListener() {
    if (_videoController.value.position >= _videoController.value.duration) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const RecommendedPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Stack(
        children: [
          Column(
            children: [
              if (_videoController.value.isInitialized)
                AspectRatio(
                  aspectRatio: _videoController.value.aspectRatio,
                  child: VideoPlayer(_videoController),
                ),
              if (_isLoading)
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
      ),
    );
  }
}
