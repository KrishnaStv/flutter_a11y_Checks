import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class SoundCues extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Accessibility Actions'),
        ),
        body: SoundCuesGE(),
      ),
    );
  }
}
/*
class SoundCuesExample extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SoundCueStates();
  }

}

class SoundCueStates extends State<SoundCuesExample> {

  final player = AudioPlayer();
   bool visibleTheLabel = false;

  void playAudio() {
    player.play('Sounds/1sec.mp3');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        SizedBox(height: 50,),
        visibleTheLabel ? new Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:  <Widget> [
            Text("Hello . .  "),
            SizedBox(height: 25,),
          ],
        )  : new Container(color: Colors.blueGrey,),

        MaterialButton(onPressed: () {
        setState(() {
          debugPrint('update');
          visibleTheLabel =  !visibleTheLabel;
        });
        }, child: Text('Show'),),

      ],
    );
  }
}
*/
class SoundCuesGE extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _SoundCuesGEState();
}

class _SoundCuesGEState extends State<SoundCuesGE> {

  AudioCache audioCache = AudioCache();
  AudioPlayer advancedPlayer = AudioPlayer();

  bool visibleStatusLabel = false;
  int selectedOption = 0;

  bool visibleTheLabel = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
    return Center(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text('Choose an option to move forward'),
          SizedBox(height: 10,),
          visibleStatusLabel ? updateContainerSelection() : new Container(),
          SizedBox(height: 15,),
          MaterialButton(onPressed: () {
            updateOption(1);
            visibleStatusLabel = true;
            playAudio();
          }, child: Text('Option One', style: TextStyle(fontSize: 12),),),
          MaterialButton(onPressed: () {
            updateOption(2);
            visibleStatusLabel = true;
            playAudio();

          }, child: Text('Option Two', style: TextStyle(fontSize: 12),),)
        ],
      ),
    );
  }

}