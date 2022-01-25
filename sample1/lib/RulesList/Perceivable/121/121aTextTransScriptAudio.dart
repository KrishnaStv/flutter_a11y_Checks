import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:sample1/importFiles.dart';

class TextTranscriptAudioSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new TextTranscriptState();
}

class TextTranscriptState extends State<TextTranscriptAudioSample> {

  AudioCache audioCache = AudioCache();
  AudioPlayer advancedPlayer = AudioPlayer();

  final String ruleDescription = 'Prerecorded audio web-based files such as mp3 files and audio podcasts MUST come with an '
      'adjacent or easily reachable descriptive text transcript or verbatim. For bad example text transcript won''t available.';
  late String _data = "";
  bool isPaused = false;
  bool isPlaying = false;
  bool isTranscriptVisibe = false;

  // This function is triggered when the user presses the floating button
  Future<void> _loadData() async {
    final _loadedData = await rootBundle.loadString('assets/121aScript.txt');
    setState(() {
      _data = _loadedData;
    });
  }

  void playAudio() {
    if(isPaused == true) {
      advancedPlayer.resume();
    } else {
      isPlaying = true;
      audioCache.play('Audio/121aAudio.mp3');
    }
  }

  void pauseAudio() {
    if(isPlaying) {
      isPaused = true;
      advancedPlayer.pause();
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    advancedPlayer.stop();
    advancedPlayer.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(
              title: SCs.TranscriptPrerecordedAudio.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        HeaderSemanticWithText(SCs.TranscriptPrerecordedAudio.name),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            playAudio();
                          },
                          child: Text('Play'),
                        ),
                        MaterialButton(
                          onPressed: () {
                            pauseAudio();
                          },
                          child: Text('Pause'),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if(isTranscriptVisibe ==  true) {
                                setState(() {
                                  _data = '';
                                });
                                isTranscriptVisibe = false;
                              } else {
                                isTranscriptVisibe = true;
                                _loadData();
                              }
                            },
                            child: Text( isTranscriptVisibe ?
                              'Hide text Transcript' : 'Show text Transcript',
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ))
                      ],
                    ),
                     Container(
                       child: Text(_data != null ? _data : '',),
                         padding:EdgeInsets.all(15),
                         alignment: Alignment.centerLeft
                     ) ,
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
