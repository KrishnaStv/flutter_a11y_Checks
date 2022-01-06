import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sample1/Extensions/AppBarExtension.dart';
import 'package:sample1/Extensions/Extensions.dart';

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
    if(selectedOption == 1) {
      return Container(
        child: Text('Wrong Option, try again',
          style: TextStyle(color: Colors.red),),
      );
    } else {
      return Container(
        child: Text('Right Option',
          style: TextStyle(color: Colors.green),),
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
          navdata: TopBarData(title: 'Sound Cues', enableBack: true)),
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
            SizedBox(height: 30,),
            Semantics(
              child:
              HeaderSemanticWithText('Good Example'),
            ),
            SizedBox(height: 10,),
            Text('Choose an option to move forward'),
            SizedBox(height: 10,),
            visibleStatusLabel ? updateContainerSelection() : new Container(),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: () {
              updateOption(1);
              visibleStatusLabel = true;
              playAudio();
            }, child: Text('Option One', style: TextStyle(fontSize: 12),),),
            ElevatedButton(onPressed: () {
              updateOption(2);
              visibleStatusLabel = true;
              playAudio();

            }, child: Text('Option Two', style: TextStyle(fontSize: 12),),),
            SizedBox(height: 30,),
            Semantics(
              child:
              HeaderSemanticWithText('Bad Example'),
            ),
            SizedBox(height: 10,),
            Text('Choose an option to move forward'),
            SizedBox(height: 10,),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: () {
              playAudio();
            }, child: Text('Option One', style: TextStyle(fontSize: 12),),),
            ElevatedButton(onPressed: () {
              playAudio();
            }, child: Text('Option Two', style: TextStyle(fontSize: 12),),)
          ],
        ),
      ),
    );
  }

}