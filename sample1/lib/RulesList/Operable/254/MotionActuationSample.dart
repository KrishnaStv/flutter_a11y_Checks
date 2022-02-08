import 'package:sample1/importFiles.dart';
import 'package:shake/shake.dart';
import 'package:sample1/RulesList/Operable/254/ShakeDetecionSample.dart';

class MotionActuationSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MotionActuationSampleState();
  }
}

class MotionActuationSampleState extends State<MotionActuationSample> {
  final String ruleDescription = 'Ensure that for functionality that can be '
      'triggered by a) device motion (like shaking, tilting) or b) '
      'user gestures detected by device sensors (including a camera) '
      'that both of the following are true: 1) motion actuation can '
      'be disabled, and 2) the functionality can be operated without'
      ' using device motion or user gestures. Exceptions exist.';

  late ShakeDetector detector;
  bool stopDetector = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    detector = ShakeDetector.waitForStart(onPhoneShake: () {
      debugPrint('Shake detected');
      showAccountDeletedsuccessAlert(context);
    });
    detector.startListening();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(
              title: SCs.MotionActuation.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.MotionActuation.name),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: HeaderSemanticWithText('Good Example'),
                  ),
                  Text('Motion Actuation is enabled for this screen'
                      ' functionality. To verify this shake the device. '
                      '\n We added functionality of shake to '
                      'perform delete action along with visible '
                      'action as well. And giving option to stop the '
                      'shake detection.'),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        showAccountDeletedsuccessAlert(context);
                      },
                      child: Text('Delete Account')),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        detector.stopListening();
                      },
                      child: Text('Disable Shake')),
                  Divider(),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return ShakeDetectionBadSample();
                        }));
                      },
                      child: Text('Bad Example')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showAccountDeletedsuccessAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('Alert'),
          content: Text('Account deleted successfully'),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Okay')),
          ],
        );
      },
    );
  }
}
