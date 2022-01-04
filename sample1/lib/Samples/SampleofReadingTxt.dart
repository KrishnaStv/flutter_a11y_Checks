import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';

import 'package:sample1/Extensions/VideoItems.dart';
import 'package:video_player/video_player.dart';

class MyApp22 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      home: _ButterFlyAssetVideo(),
    );
  }
}

class HomePage22 extends StatefulWidget {
  @override
  _HomePageState22 createState() => _HomePageState22();
}

class _HomePageState22 extends State<HomePage22> {
 late String _data = "";

  // This function is triggered when the user presses the floating button
  Future<void> _loadData() async {
    final _loadedData = await rootBundle.loadString('assets/121aScript.txt');
    setState(() {
      _data = _loadedData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kindacode.com'),
      ),
      body: Center(
          child: Column(
            children: [
              Container(
                  width: 300,
                  height: 100,
                  child: Text(_data != null ? _data : 'Nothing to show',
                      style: TextStyle(fontSize: 24))),

              VideoItems(videoPlayerController:
              VideoPlayerController.asset('assets/Videos/121bGEVideo.mp4'),
              looping: false,autoplay: true,)

            ],
          )
      ),
      floatingActionButton:
      FloatingActionButton(onPressed: _loadData, child: Icon(Icons.add)),
    );
  }
}


class _ButterFlyAssetVideo extends StatefulWidget {
  @override
  _ButterFlyAssetVideoState createState() => _ButterFlyAssetVideoState();
}

class _ButterFlyAssetVideoState extends State<_ButterFlyAssetVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/Videos/121bBEVideo.mp4');

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 20.0),
          ),
          const Text('With assets mp4'),
          Container(
            padding: const EdgeInsets.all(20),
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  VideoPlayer(_controller),
                  // _ControlsOverlay(controller: _controller),
                  VideoProgressIndicator(_controller, allowScrubbing: true),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

