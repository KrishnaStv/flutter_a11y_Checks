import 'package:sample1/importFiles.dart';

class VisualCues extends StatelessWidget {

  final String ruleDescription =
      'Information/instruction is presented to the user in a way that not just requires the'
      ' ability to see, and there MUST be an alternate method to convey the information.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: SCs.VisualCues.pageTitle, enableBack: true)),
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
            Semantics(
              child:
              HeaderSemanticWithText('Good Example'),
            ),
            Container(
              height: 45,
              width: 130,
              color: Colors.red,
              child:
              MaterialButton(onPressed: () {

              }, child: Text('STOP',
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 21),
              )
              ),
            ),
            SizedBox(height: 45,),
            Semantics(
              child:
              HeaderSemanticWithText('Bad Example'),
            ),
            Container(
              height: 45,
              width: 130,
              color: Colors.red,
              child:
              MaterialButton(onPressed: () {

              }, child: Text('',
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 21),
              )
              ),
            ),
          ],
        ),
      ),
    );
  }
}