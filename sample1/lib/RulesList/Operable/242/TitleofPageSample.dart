import 'package:sample1/importFiles.dart';

class TitlesOfPageSample extends StatelessWidget {
  final String ruleDescription =
      'Screens MUST have meaningful and informative screen titles.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata:
              TopBarData(title: SCs.TitlesOfPages.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.TitlesOfPages.name),
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
                  Text('In Flutter, if we use the default Appbar bar, the '
                      'Appbar title will take as Page title.We can use Container '
                      'also as a custom navigation representation. We need to '
                      'enable title label semantic as header.'),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: AppBar(
                      title: Text('Sample Title'),
                    ),
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
                  Text('The sample below misses a meaningful title '
                      'or misses a title completely.'),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    color: Colors.blue,
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
