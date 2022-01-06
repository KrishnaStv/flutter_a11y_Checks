import 'package:flutter/material.dart';
import 'package:sample1/Extensions/AppBarExtension.dart';
import 'package:sample1/Extensions/Extensions.dart';

import 'package:video_player/video_player.dart';

class TextTranscriptVideoSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new TextTranscriptVideoState();
}

class TextTranscriptVideoState extends State<TextTranscriptVideoSample> {

  late VideoPlayerController _controller;
  late VideoPlayerController _beController;

  final String ruleDescription = 'Prerecorded and all web based video files MUST come with an adjacent or easily reachable full text alternative describing the important visual details OR an audio description track'
      '. For bad example descriptions won''t available.';

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/Videos/121bGEVideo.mp4');
    _beController = VideoPlayerController.asset('assets/Videos/121bBEVideo.mp4');

    // _controller.addListener(() {
    //   setState(() {
    //
    //   });
    // });
    // _controller.setLooping(false);
    _controller.initialize().then((_) => setState(() {}));
    _beController.initialize().then((_) => setState(() {}));

    // _controller.play();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _beController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: new AppBarExtension(
            navdata: TopBarData(
                title: 'Text Transcripts for Video', enableBack: true)),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        HeaderSemanticWithText('Description'),
                      ],
                    ),
                    Text(ruleDescription),
                  ],
                ),
                padding:
                EdgeInsets.all(15),
                alignment: Alignment.centerLeft,
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Column(
                  children: [
                    Semantics(
                      child: Text('Good Example', style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                      header: true,
                    ),
                    AspectRatio(aspectRatio: _controller.value.aspectRatio,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          VideoPlayer(_controller),
                          VideoProgressIndicator(_controller, allowScrubbing: true),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            _controller.play();
                          },
                          child: Text('Play'),
                        ),
                        MaterialButton(
                          onPressed: () {
                            _controller.pause();
                          },
                          child: Text('Pause'),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Semantics(
                      child: Text('Bad Example', style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                      header: true,
                    ),
                    AspectRatio(aspectRatio: _beController.value.aspectRatio,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          VideoPlayer(_beController),
                          VideoProgressIndicator(_beController, allowScrubbing: true),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            _beController.play();
                          },
                          child: Text('Play'),
                        ),
                        MaterialButton(
                          onPressed: () {
                            _beController.pause();
                          },
                          child: Text('Pause'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}