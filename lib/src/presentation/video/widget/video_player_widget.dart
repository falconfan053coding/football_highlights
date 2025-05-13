import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:football_highlights/core/widgets/loading_widget.dart';
import 'package:football_highlights/src/presentation/main_videos/data/model/video_model.dart';

class MainVideoPage extends StatefulWidget {
  final List<VideosModel>? videos;
  final String videoId;
  final int? currentIndex;

  const MainVideoPage({
    super.key,
    required this.videos,
    required this.videoId,
    required this.currentIndex,
  });

  @override
  _MainVideoPageState createState() => _MainVideoPageState();
}

class _MainVideoPageState extends State<MainVideoPage> {
  late InAppWebViewController _webViewController;
  bool _isLoading = true; // Loading state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.videos?[widget.currentIndex ?? 0].Title ?? '',
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: const TextStyle(fontSize: 16),
        ),
      ),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: WebUri.uri(Uri.parse('https://www.youtube.com/watch?v=hvME1VrObu0&list=PL1OajwstW05EEM-RlncT42Edf_nf1hTmN&index=27&pp=iAQB')),
            ),
            onWebViewCreated: (controller) {
              _webViewController = controller;
            },
            onLoadStart: (controller, url) {
              print("Loading: $url");
            },
            onLoadStop: (controller, url) async {
              print("Stopped Loading: $url");
              setState(() {
                _isLoading = false; // Set loading to false when page is fully loaded
              });
            },
            onLoadError: (controller, url, code, message) {
              print("Error loading: $url, code: $code, message: $message");
              setState(() {
                _isLoading = false; // Set loading to false in case of error
              });
            },
          ),
          if (_isLoading) // Show loading indicator while loading
            const Center(
              child: LoadingWidget(),
            ),
        ],
      ),
    );
  }
}
