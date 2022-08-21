import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/home/home.dart';
import 'package:video_player/video_player.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double appBarHeight = Scaffold.of(context).appBarMaxHeight!;
    final double height = MediaQuery.of(context).size.height - appBarHeight;

    return Stack(
      children: [
        BackgroundVideo(height: height),
        Container(
          color: Colors.black.withOpacity(0.6),
          height: height,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 50),
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeHeaderTop(),
              const HomeHeaderMid(),
              const HomeHeaderSearchBar(),
              TrendingSearchList(),
            ],
          ),
        ),
        const Positioned(
          bottom: 12,
          right: 12,
          child: Text(
            '@antonyz89',
            style: TextStyle(color: Colors.grey),
          ),
        )
      ],
    );
  }
}

class BackgroundVideo extends StatefulWidget {
  final double height;

  const BackgroundVideo({Key? key, required this.height}) : super(key: key);

  @override
  State<BackgroundVideo> createState() => _BackgroundVideoState();
}

class _BackgroundVideoState extends State<BackgroundVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Pointing the video controller to our local asset.
    _controller = VideoPlayerController.asset("assets/video/header-background.mp4")
      ..initialize().then((_) {
        // Once the video has been loaded we play the video and set looping to true.
        _controller.play();
        _controller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: VideoPlayer(_controller),
    );
  }
}
