import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';
import 'package:sample1/importFiles.dart';

class AudioControlSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AudioControlSampleState();
  }
}

class AudioControlSampleState extends State<AudioControlSample> {
  AudioCache audioCache = AudioCache();
  AudioPlayer advancedPlayer = AudioPlayer();
  bool isPlaying = false;

  final String ruleDescription =
      'A mechanism MUST be provided to stop, pause, mute, or adjust volume for '
      'audio that automatically plays on a page for more than 3 seconds.';

  void playAudio() {
    // audioPlayer.play('Sounds/1sec.mp3');
    audioCache.play('Audio/142a.mp3');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
    playAudio();
    isPlaying = true;
  }

  void pauseAudio() {
    setState(() {
      if (isPlaying) {
        isPlaying = false;
        advancedPlayer.pause();
      } else {
        isPlaying = true;
        advancedPlayer.resume();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata:
              TopBarData(title: SCs.AudioControl.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.AudioControl.name),
                    ],
                  ),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: HeaderSemanticWithText('Good Example:'),
                    ),
                    Text('The sample below adds a button to pause '
                        'or resume the audio that plays automatically.')
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Our Fresh Audio Compilation'),
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    pauseAudio();
                  },
                  child: Text(
                    isPlaying ? 'Pause' : 'Play',
                    style: TextStyle(fontSize: 12),
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
