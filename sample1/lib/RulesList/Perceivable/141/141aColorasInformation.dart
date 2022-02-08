import 'package:sample1/importFiles.dart';

class ColorasInfoSample extends StatelessWidget {
  final String ruleDescription = 'Color MUST NOT be used as the sole method of '
      'conveying content or distinguishing visual elements.';
  final String geDesc1 = 'Pie chart depicting Recommended Diet. Fruit 30%, '
      'Protein 23%, Vegetables 18%, Dairy 15%, Grains 9% and Others 5%.';

  Image getImageFromPath(String path) {
    var assertImagePAth = new AssetImage(path);
    return new Image(
      image: assertImagePAth,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(
              title: SCs.ColorAsInformation.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.ColorAsInformation.name),
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
                          'Good Example: Using alternative'
                          ' information associated with information '
                          'conveyed through color.'),
                    ),
                    Text(geDesc1),
                  ],
                )),
            Semantics(
              child: Container(
                color: Colors.red,
                child: getImageFromPath('assets/images/metachartgood.png'),
              ),
              label: geDesc1,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                          'Student marks representation based on color \nwith respective text'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Robert'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Pass 60',
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Harvard'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Fail 30',
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                ],
              ),
              padding: EdgeInsets.only(left: 15, right: 15),
              alignment: Alignment.centerLeft,
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
                      child:
                          HeaderSemanticWithText('Bad Example: the Only color '
                              'used to convey information and no '
                              'alternatives provided.'),
                    ),
                    Text(geDesc1),
                  ],
                )),
            Semantics(
              child: Container(
                color: Colors.red,
                child: getImageFromPath('assets/images/metachartbad.png'),
              ),
              label: geDesc1,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                          'Student marks representation based on color \nwith respective text'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Robert'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        '60',
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Harvard'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        '30',
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                ],
              ),
              padding: EdgeInsets.only(left: 15, right: 15),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(
              height: 55,
            ),
          ],
        ),
      ),
    );
  }
}
