import 'package:sample1/importFiles.dart';
import 'dart:async';

class FlashingContentSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new FlashingContentSampleState();
  }
}

class FlashingContentSampleState extends State<FlashingContentSample> {
  final String ruleDescription =
      'A screen MUST NOT contain content that flashes more than 3'
      ' times per second unless that flashing content is sufficiently '
      'small, the flashes are of low contrast and do not violate general '
      'flash thresholds.';

  Image getImageFromPath(String path) {
    var assertImagePAth = new AssetImage(path);
    return Image(
      image: assertImagePAth,
      fit: BoxFit.cover,
    );
  }

  late Timer _timer;
  double alphaValue = 1;

  void startFlashingTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(oneSec, (Timer timer) {
      setState(() {
        if (alphaValue == 1) {
          alphaValue = 0;
        } else {
          alphaValue = 1;
        }
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startFlashingTimer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(
              title: SCs.FlashingContent.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.FlashingContent.name),
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
                  Text('The sample below avoids flash content and instead uses'
                      ' an alternative label to replace a flashing content or '
                      'in case the flashing is introduced using programmatically, '
                      'then the duration is increased (second label below) to'
                      ' make sure the rate is well in recommended limits.'),
                  SizedBox(
                    height: 10,
                  ),
                  Semantics(
                    label: 'Offers of Month',
                    child: getImageFromPath('assets/images/imagesoftext.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: HeaderSemanticWithText('Bad Example'),
                  ),
                  Text('The sample below uses programmatic animation over a '
                      'label to change the visibility to give a flashing effect.'
                      ' Observe the duration of the animation cycle is so'
                      ' low that it flashes faster.'),
                  SizedBox(
                    height: 10,
                  ),
                  Semantics(
                    image: true,
                    child: Container(
                      height: 90,
                      width: 280,
                      decoration: BoxDecoration(
                        color: const Color(0xffffff),
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(alphaValue),
                              BlendMode.srcOver),
                          image: AssetImage('assets/images/imagesoftext.png'),
                        ),
                      ),
                    ),
                    label: 'Offers of the month',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
