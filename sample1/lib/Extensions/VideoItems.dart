import 'package:flutter/material.dart';
// import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoItems extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  bool looping = false;
  bool autoplay = false;
  
  VideoItems({
    required this.videoPlayerController,
    this.looping = false,
    this.autoplay = false,
    Key? key,
   }) : super(key: key);
  
  @override
  State<StatefulWidget> createState() => _VideoItemsState();
}

class _VideoItemsState extends State<VideoItems> {
  // late ChewieController _chewieController;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _chewieController = ChewieController(
    //   videoPlayerController: widget.videoPlayerController,
    //   aspectRatio: 5/8,
    //   autoInitialize: false,
    //   autoPlay: widget.autoplay,
    //   looping: widget.looping,
    //   errorBuilder: (context, errorMsg) {
    //     return Center(
    //       child: Text(errorMsg, style: TextStyle(color: Colors.white),),
    //     );
    //   }
    // );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // _chewieController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8),
    child:Text('hi'),
    // Chewie(
    //   controller: _chewieController,
    // ),
    );
  }
}