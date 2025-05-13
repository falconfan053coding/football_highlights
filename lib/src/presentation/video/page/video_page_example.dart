import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:football_highlights/app/router.dart';
import 'package:football_highlights/core/widgets/my_custom_text.dart';
import 'package:football_highlights/src/presentation/main_videos/data/model/video_model.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../core/widgets/video_widget.dart';



class VideoPage extends StatefulWidget {
  final List<VideosModel>? videos;
  final String videoId;
  final int currentIndex;

  const VideoPage({
    super.key,
    required this.videos,
    required this.videoId,
    required this.currentIndex,
  });

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late YoutubePlayerController _youtubeController;
  int? _currentPlayingIndex;
  bool _isFullScreen = false;
  Duration _lastPosition = Duration.zero;
  bool _hasPlayedNext = false;

  @override
  void initState() {
    super.initState();
    _currentPlayingIndex = widget.currentIndex;
    _youtubeController = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );

    _youtubeController.addListener(() {
      if (_youtubeController.value.isFullScreen != _isFullScreen) {
        setState(() {
          _isFullScreen = _youtubeController.value.isFullScreen;

          if (_isFullScreen) {
            SystemChrome.setPreferredOrientations([
              DeviceOrientation.landscapeLeft,
              DeviceOrientation.landscapeRight,
            ]);
          } else {
            SystemChrome.setPreferredOrientations(DeviceOrientation.values);
          }
        });
      }
      if (_youtubeController.value.isPlaying) {
        _lastPosition = _youtubeController.value.position;
      }

      final position = _youtubeController.value.position;
      final duration = _youtubeController.value.metaData.duration;

      if (position > duration * 0.99 && !_hasPlayedNext) {
        setState(() {
          _hasPlayedNext = true;
        });
        _playNextVideo();
      }
    });
  }

  void _playNextVideo() {
    if (widget.currentIndex + 1 < widget.videos!.length) {
      GoRouter.of(context).pushReplacement(
        Routes.videoPage,
        extra: {
          'videos': widget.videos,
          'videoId': widget.videos![widget.currentIndex + 1].Video_id ?? '',
          'currentIndex': widget.currentIndex + 1,
        },
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("All videos are finished")),
      );
    }

    setState(() {
      _hasPlayedNext = false;
    });
  }

  void _resumeVideoFromLastPosition() {
    if (_lastPosition != Duration.zero) {
      _youtubeController.seekTo(_lastPosition);
      _youtubeController.play();
    }
  }

  @override
  void dispose() {
    _lastPosition = _youtubeController.value.position;
    _youtubeController.dispose();
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: !_isFullScreen
            ? AppBar(
          toolbarHeight: 60,
          backgroundColor: Colors.grey.shade300,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        )
            : null,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: YoutubePlayerBuilder(
                player: YoutubePlayer(
                  controller: _youtubeController,
                  showVideoProgressIndicator: true,
                  onReady: _resumeVideoFromLastPosition,
                  actionsPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  topActions: [
                    const Spacer(),
                    GestureDetector(
                      child: const Icon(
                        Icons.skip_previous,
                        color: Colors.white,
                        size: 30,
                      ),
                      onTap: () {
                        if (widget.currentIndex > 0) {
                          GoRouter.of(context).pushReplacement(
                            Routes.videoPage,
                            extra: {
                              'videos': widget.videos,
                              'videoId': widget.videos![widget.currentIndex - 1].Video_id ?? '',
                              'currentIndex': widget.currentIndex - 1,
                            },
                          );
                        }
                      },
                    ),
                    GestureDetector(
                      child: const Icon(
                        Icons.replay_10,
                        color: Colors.white,
                        size: 30,
                      ),
                      onTap: () {
                        _youtubeController.seekTo(
                          _youtubeController.value.position - const Duration(seconds: 15),
                        );
                      },
                    ),
                    const SizedBox(width: 10,),
                    GestureDetector(
                      child: const Icon(
                        Icons.forward_10,
                        color: Colors.white,
                        size: 30,
                      ),
                      onTap: () {
                        _youtubeController.seekTo(
                          _youtubeController.value.position + const Duration(seconds: 15),
                        );
                      },
                    ),
                    GestureDetector(
                      onTap: _playNextVideo,
                      child: const Icon(
                        Icons.skip_next,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),

                  ],
                ),
                builder: (context, player) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        player,
                      ],
                    ),
                  );
                },
              ),
            ),
            if (!_isFullScreen)
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        MyCustomText(
                          widget.videos?[_currentPlayingIndex!].Title ?? '',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.videos?[_currentPlayingIndex!].Channelname?.toUpperCase() ?? "No channel",
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.red,
                              ),
                            ),
                            Text(
                              widget.videos?[_currentPlayingIndex!].Upload_date != null
                                  ? formatDate(widget.videos?[_currentPlayingIndex!].Upload_date ?? DateTime.now())
                                  : "No date",
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.57,
                    child: ListView.builder(
                      itemCount: widget.videos?.length ?? 0,
                      itemBuilder: (context, index) {
                        return VideoItem(
                          currentIndex: index,
                          videos: widget.videos,
                          videoId: widget.videos?[index].Video_id ?? '',
                          onTap: () {
                            GoRouter.of(context).pushReplacement(
                              Routes.videoPage,
                              extra: {
                                'videos': widget.videos,
                                'videoId': widget.videos?[index].Video_id ?? '',
                                'currentIndex': index,
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
