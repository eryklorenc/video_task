part of 'video_cubit.dart';

@freezed
class VideoState with _$VideoState {
  const factory VideoState({
    @Default(false) bool isLoading,
    @Default(null) VideoPlayerController? videoController,
    @Default(false) bool isFinished,
    String? errorMessage,
  }) = _VideoState;
}
