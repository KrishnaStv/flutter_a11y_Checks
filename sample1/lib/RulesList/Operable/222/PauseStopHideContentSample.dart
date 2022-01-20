import 'package:flutter/material.dart';
import 'package:sample1/Extensions/AppBarExtension.dart';
import 'package:sample1/Extensions/Extensions.dart';
import 'dart:async';

class PauseStopHideContentSample extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PauseStopHideContentState();
  }
}

class PauseStopHideContentState extends State<PauseStopHideContentSample> {

  final String ruleDescription =
      'Automatically moving, blinking, or scrolling content '
      'that lasts longer than 5 seconds MUST be able to be paused, '
      'stopped, or hidden by the user.';

  var imageObj;

  late Timer _timer;
  var _start = 2;
  var isAnimationPause = false;

  late Timer _badTimer;
  var _badStart = 2;

  List imagesArray = ['assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png'];
  late AssetImage _imageToShow;
  late AssetImage _badImageToShow;


  void pauseTimer() {
    _timer.cancel();
  }

  void startTimer() {
    _start = imagesArray.length-1;
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          _start = imagesArray.length-1;
          // setState(() {
          //   timer.cancel();
          // });
        } else {
          setState(() {
            _imageToShow = AssetImage(imagesArray[_start]);
            _start--;
          });
        }
      },
    );
  }

  void startBadTimer() {
    _badStart = imagesArray.length-1;
    const oneSec = const Duration(seconds: 1);
    _badTimer = new Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_badStart == 0) {
          _badStart = imagesArray.length-1;
          // setState(() {
          //   timer.cancel();
          // });
        } else {
          setState(() {
            _badImageToShow = AssetImage(imagesArray[_badStart]);
            _badStart--;
          });
        }
      },
    );
  }

  Image getImageFromPath(String path) {
    var assertImagePAth = new AssetImage(path);
    imageObj = Image(
      image: assertImagePAth,
      fit: BoxFit.cover,
    );
    return imageObj;
  }

  initState(){
    _imageToShow = AssetImage(imagesArray[0]);
    _badImageToShow = AssetImage(imagesArray[0]);
    startTimer();
    startBadTimer();
  }

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: 'Pause, Stop, or Hide Content', enableBack: true)),
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
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
            Semantics(
              child:
              Container(
                padding: EdgeInsets.only(left: 15),
                alignment: Alignment.topLeft,
                child: HeaderSemanticWithText('Good Example: Provides a button to control play/pause of the image-slider.'),
              ),
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('The sample below uses a native ViewFlipper'
                        ' with multiple ImageViews to present a slider. '
                        'ViewFlipper by default comes with a good set of '
                        'functions to autostart, stop, start a flipper.'),
                    SizedBox(height: 10,),
                    Image(
                    image: _imageToShow,
                    fit: BoxFit.cover,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Semantics(
                          child: ElevatedButton(
                            child: isAnimationPause ? Text("Play") : Text("Pause"),
                            onPressed: () {
                              setState(() {
                                isAnimationPause = !isAnimationPause;
                                if(isAnimationPause == true) {
                                  pauseTimer();
                                } else {
                                  startTimer();
                                }
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            Semantics(
              child:
              Container(
                alignment: Alignment.topLeft,
                child: HeaderSemanticWithText('   Bad Example: No option to adjust or extend time limit.'),
              ),
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('The sample below does not warn or allow users'
                        ' to extend/adjust the timing of the session time-outs.'),
                    SizedBox(height: 10,),
                    Image(
                      image: _badImageToShow,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 45,),
          ],
        ),
      ),
    );
  }
}