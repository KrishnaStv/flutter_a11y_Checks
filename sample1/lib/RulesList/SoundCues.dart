import 'package:audioplayers/audio_cache.dart';
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

class SoundCuesExample extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SoundCueStates();
  }

}

class SoundCueStates extends State<SoundCuesExample> {

  final player = AudioCache();
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

class SoundCuesGE extends StatefulWidget {
  bool isforGood = false;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SoundCuesGEState();
  }
}

class _SoundCuesGEState extends State<SoundCuesGE> {

  bool visibleStatusLabel = false;
  int selectedOption = 0;

  final player = AudioCache();
  bool visibleTheLabel = false;

  void playAudio() {
    player.play('Sounds/1sec.mp3');
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