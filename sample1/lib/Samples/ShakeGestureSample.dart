import 'package:sample1/importFiles.dart';
import 'package:shake/shake.dart';

class ShakeDetectionExampleSample extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ShakeDetectionExampleSampleState();
  }
}

class ShakeDetectionExampleSampleState extends State<ShakeDetectionExampleSample> {

  late ShakeDetector detector;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    detector = ShakeDetector.waitForStart(onPhoneShake: () {
      print('Shake detected');
    });

    detector.startListening();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Shake Detection'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('shake detection'),
            ElevatedButton(onPressed: (){
              detector.stopListening();
            }, child: Text('Stop')),
            ElevatedButton(onPressed: (){
              detector.startListening();
            }, child: Text('Start')),
          ],
        ),
      ),
    );
  }
}
