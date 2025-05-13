import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:football_highlights/src/presentation/main/pages/main_page.dart';
import 'package:football_highlights/src/presentation/main_videos/data/model/video_model.dart';
import 'package:football_highlights/src/presentation/video/page/video_page.dart';
import 'package:football_highlights/src/presentation/video/widget/video_player_widget.dart';

abstract class Routes {
  static const mainPage = '/mainPage';
  static const videoPage = '/videoPage';
  static const mainVideoPage = '/mainVideoPage';
}

String _initialLocation() {
  return Routes.mainPage;
}

Object? _initialExtra() {
  return null;
}

final router = GoRouter(
  initialLocation: _initialLocation(),
  initialExtra: _initialExtra(),
  routes: [
    GoRoute(
      path: Routes.mainPage,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const MainPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: Routes.videoPage,
      pageBuilder: (context, state) {
        final extra = state.extra as Map<String, dynamic>;
        final videos = extra['videos'] as List<VideosModel>;
        final videoId = extra['videoId'] as String;
        final currentIndex = extra['currentIndex'] as int;
        return CustomTransitionPage(
          key: state.pageKey,
          child: VideoPage(
            videos: videos,
            videoId: videoId,
            currentIndex: currentIndex,
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.mainVideoPage,
      pageBuilder: (context, state) {
        final extra = state.extra as Map<String, dynamic>;
        final videos = extra['videos'] as List<VideosModel>;
        final videoId = extra['videoId'] as String;
        final currentIndex = extra['currentIndex'] as int;
        return CustomTransitionPage(
          key: state.pageKey,
          child: MainVideoPage(
            videos: videos,
            videoId: videoId,
            currentIndex: currentIndex,
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
  ],
);

