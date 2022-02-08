import 'package:sample1/importFiles.dart';
import 'package:shake/shake.dart';

class ShakeDetectionBadSample extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ShakeDetectionSampleState();
  }
}

class ShakeDetectionSampleState extends State<ShakeDetectionBadSample> {

  late ShakeDetector detector;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    detector = ShakeDetector.waitForStart(onPhoneShake: () {
      print('Shake detected');
      showAccountDeletedsuccessAlert(context);
    });

    detector.startListening();
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
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('Okay')),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata:
          TopBarData(title: 'Shake Detection', enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: HeaderSemanticWithText('Bad Example'),
                  ),
                  Text('Motion Actuation is enabled for this screen'
                      ' functionality. To verify this shake the device. '
                      '\n We added functionality of shake to '
                      'perform delete action.There is no alternative action '
                      'to perform deletion and no option to disable the shake detection. '),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
      ),
    );
  }
}
