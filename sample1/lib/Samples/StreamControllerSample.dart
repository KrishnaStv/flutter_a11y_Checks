import 'package:flutter/material.dart';
import 'dart:async';

class StreamControllerSample extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new StreamControllerSampleState();
  }
}

class StreamControllerSampleState extends State<StreamControllerSample> {

  late StreamController streamController;

  void pauseHandler() {
    print('on Pause');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    streamController = StreamController(
      onPause:pauseHandler
    );

    late StreamSubscription subscription;
    subscription = streamController.stream.listen((event) {
      print('data event $event');

      subscription.pause(Future.delayed(Duration(seconds: 5)));
      },
      onDone: () {
      print('Done');
      },
      onError: (error) {
      print('error');
      }
    );

    streamController.add('Test 1');
    streamController.add(Stream.error(Exception('an error')));
    streamController.add('Test 2');
    streamController.add('Test 3');
    streamController.close();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    streamController.close();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream Controller Example'),
      ),
      body: Center(
        child: Text('Hello'),
      ),
    );
  }

}