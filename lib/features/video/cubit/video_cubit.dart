import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:video_player/video_player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_state.dart';
part 'video_cubit.freezed.dart';

@injectable
class VideoCubit extends Cubit<VideoState> {
  VideoCubit() : super(const VideoState(isLoading: true));

  void initialize(String videoUrl, Function onVideoEnd) async {
    final controller = VideoPlayerController.networkUrl(
      Uri.parse(videoUrl),
    );

    await controller.initialize();
    emit(state.copyWith(
      isLoading: false,
      videoController: controller,
    ));

    controller.play();

    controller.addListener(() {
      if (controller.value.position >= controller.value.duration) {
        emit(state.copyWith(isFinished: true));
        onVideoEnd();
      }
    });
  }

  @override
  Future<void> close() {
    state.videoController?.dispose();
    return super.close();
  }
}
