import 'package:sample1/importFiles.dart';

class ImageofTextSample extends StatelessWidget {

  final String ruleDescription =
      'If the same visual presentation can be made using text alone, '
      'an image MUST NOT be used to present that text.';

  final String geDescription =
      'The sample below uses a Label'
      ' to present the information of offers '
      'instead of an image. This makes text '
      'accessible automatically without any special measures.';

  final String beDescription =
      'The use of an image with text on it induces a '
      'compulsion of adding a text alternate. Also,'
      ' images cannot be resized in some usages,'
      ' and texts on image lose their granularity when zoomed.';

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
          navdata: TopBarData(title: SCs.ImageOfText.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.ImageOfText.name),
                    ],
                  ),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
            Semantics(
              child: Container(
                  padding: EdgeInsets.only(left: 15,right: 15),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      HeaderSemanticWithText('Good Example: Text used '
                          'instead of a banner image.'),
                      Text(geDescription),
                    ],
                  )
              ),
            ),
            Semantics(
              label: 'Offers of the month',
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.red,
                child: Semantics(
                  excludeSemantics: true,
                  child: Column(
                    children: [
                      Text('OFFERS',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 20, color: Colors.white),),
                      Text('OF THE MONTH',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 20, color: Colors.white),)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 25,),
            Semantics(
              child: Container(
                  padding: EdgeInsets.only(left: 15,right: 15),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      HeaderSemanticWithText('Bad Example: Image of'
                          ' Text used instead of actual text.'),
                      Text(beDescription),
                    ],
                  )
              ),
            ),
            Semantics(
              label: 'Offers of the month',
              child: Container(
                child: Column(
                  children: [
                    getImageFromPath('assets/images/imagesoftext.png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
