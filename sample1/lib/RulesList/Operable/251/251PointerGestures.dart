import 'package:sample1/importFiles.dart';

class PointerGesturesSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PointerGesturesSampleState();
  }
}

class PointerGesturesSampleState extends State<PointerGesturesSample> {
  final String ruleDescription =
      'All functionality that can be operated with a '
      'pointer can be operated with single-pointer actions.'
      ' Path-based or multi-point gestures are not required '
      'to operate any functionality. Exceptions exist.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(
              title: SCs.PointerGestures.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.PointerGestures.name),
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
                  Text('Multipoint gesture: Below Map view contains separate '
                      'user actions for  Zoom in  & Zoom Out apart from'
                      ' pinch gesture.'),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text('First Name'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: HeaderSemanticWithText('Bad Example'),
                  ),
                  Text('In the sample below, the visible labels do'
                      ' not define sufficiently the fields and their purpose.'),
                  SizedBox(
                    height: 10,
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
