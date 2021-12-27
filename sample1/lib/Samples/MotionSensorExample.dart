import 'package:flutter/material.dart';
// import 'package:sensors/sensors.dart';

class MotionSensorExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Motion Sensor Example'),
          ),
          body: MotionSensorApp(),
        ),
      ),
    );
  }
}

class MotionSensorApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MotionSensorAppState();
  }
}

class MotionSensorAppState extends State<MotionSensorApp> {

  late double x = 0, y = 0, z = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // accelerometerEvents.listen((AccelerometerEvent event) {
    //   setState(() {
    //     x = event.x;
    //     y = event.y;
    //     z = event.z;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('Motion case x: $x, y: $y, z:$z');
  }

}
