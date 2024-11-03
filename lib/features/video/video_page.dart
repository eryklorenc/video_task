import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:video_task/features/recommended/widgets/recommended_section.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  VideoPageState createState() => VideoPageState();
}

class VideoPageState extends State<VideoPage> {
  late VideoPlayerController _videoController;
  bool _isVideoVisible = true;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.networkUrl(
      Uri.parse(
          'https://images.all-free-download.com/footage_preview/mp4/closeup_of_honey_bee_on_wild_flower_6891910.mp4'),
    )
      ..initialize().then((_) {
        setState(() {});
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
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) => const HomePage()),
      // );
    }
  }

  void _toggleVideoVisibility() {
    setState(() {
      _isVideoVisible = !_isVideoVisible;
      if (_isVideoVisible) {
        _videoController.seekTo(Duration.zero);
        _videoController.play();
      } else {
        _videoController.pause();
        // Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(builder: (context) => const HomePage()),
        // );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          '',
          style: Theme.of(context).textTheme.bodyMedium,
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
      body: Column(
        children: [
          if (_isVideoVisible && _videoController.value.isInitialized)
            AspectRatio(
              aspectRatio: _videoController.value.aspectRatio,
              child: VideoPlayer(_videoController),
            ),
          const Expanded(
            child: SingleChildScrollView(
              child: RecommendedSection(),
            ),
          ),
        ],
      ),
    );
  }
}
