import 'package:sample1/importFiles.dart';

class VisualCues extends StatelessWidget {
  final String ruleDescription =
      'Information/instruction is presented to the user in a way '
      'that not just requires the'
      ' ability to see, and there MUST be an alternate method to '
      'convey the information.';
  final String geDescription = 'We must need to provide alternative text'
      ' for users, not just visual representation. In the example, for '
      'the stopping exam, we were given the red color STOP button.';

  final String beDescription = ' Without visual text only depend on the '
      'color as information. In the example we didn\'t '
      'provide STOP text for the button.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata:
              TopBarData(title: SCs.VisualCues.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.VisualCues.name),
                    ],
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
                      child: HeaderSemanticWithText(
                          'Good Example: Using proper instructions'
                          ' more than just visual cues.'),
                    ),
                    Text(geDescription),
                  ],
                )),
            Container(
              height: 45,
              width: 130,
              color: Colors.red,
              child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    'STOP',
                    style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 21),
                  )),
            ),
            SizedBox(
              height: 45,
            ),
            Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child:
                          HeaderSemanticWithText('Bad Example:An instruction to'
                              ' users that requires the ability to see.'),
                    ),
                    Text(beDescription),
                  ],
                )),
            Container(
              height: 45,
              width: 130,
              color: Colors.red,
              child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    '',
                    style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 21),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
