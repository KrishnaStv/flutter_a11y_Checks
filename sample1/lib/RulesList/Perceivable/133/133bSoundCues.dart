import 'package:audioplayers/audioplayers.dart';
import 'package:sample1/importFiles.dart';
import 'package:flutter/semantics.dart';

class SoundCuesSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _SoundCuesGEState();
  }
}

class _SoundCuesGEState extends State<SoundCuesSample> {
  AudioCache audioCache = AudioCache();
  AudioPlayer advancedPlayer = AudioPlayer();

  bool visibleStatusLabel = false;
  int selectedOption = 0;

  bool visibleTheLabel = false;

  final String ruleDescription =
      'Instructions provided to users MUST not only rely on just sound or auditory cues.';

  void playAudio() {
    // audioPlayer.play('Sounds/1sec.mp3');
    audioCache.play('Sounds/1sec.mp3');
  }

  Container updateContainerSelection() {
    if (selectedOption == 1) {
      return Container(
        child: Text(
          'Wrong Option, try again',
          style: TextStyle(color: Colors.red),
        ),
      );
    } else {
      return Container(
        child: Text(
          'Right Option',
          style: TextStyle(color: Colors.green),
        ),
      );
    }
  }

  void updateOption(int value) {
    setState(() {
      selectedOption = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata:
              TopBarData(title: SCs.SoundCues.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.SoundCues.name),
                    ],
                  ),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
            Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    HeaderSemanticWithText('Good Example: Using proper '
                        'instructions more than just sound cues.'),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Text('Choose an option to move forward'),
            visibleStatusLabel ? updateContainerSelection() : new Container(),
            ElevatedButton(
              onPressed: () {
                updateOption(1);
                visibleStatusLabel = true;
                playAudio();
                Future.delayed(Duration(milliseconds: 300), () {
                  SemanticsService.announce(
                      "Wrong Option, try again", TextDirection.ltr);
                });
              },
              child: Text(
                'Option One',
                style: TextStyle(fontSize: 12),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                updateOption(2);
                visibleStatusLabel = true;
                playAudio();
                Future.delayed(Duration(milliseconds: 300), () {
                  SemanticsService.announce(
                      "Right Option", TextDirection.ltr);
                });
              },
              child: Text(
                'Option Two',
                style: TextStyle(fontSize: 12),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    HeaderSemanticWithText('Bad Example: Using just sound '
                        'cues and no alternative methods.'),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Text('Choose an option to move forward'),
            ElevatedButton(
              onPressed: () {
                playAudio();
              },
              child: Text(
                'Option One',
                style: TextStyle(fontSize: 12),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                playAudio();
              },
              child: Text(
                'Option Two',
                style: TextStyle(fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
