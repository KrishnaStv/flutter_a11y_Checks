import 'package:sample1/importFiles.dart';

class AltTextDecorativeImages extends StatelessWidget {

  final String ruleDescription =
      'Images that do not convey content, are decorative,'
      ' or with content that is already conveyed in text '
      'in the context MUST not be given a Semantic label '
      'attribute, or MUST be given a blank Semantic label value.';
  final String geRuleDescription =
      'Not decided.';
  final String codeSnippet = ' Semantics( \n '
      'child: Container( \n child: ImageWidget'
      'excludeSemantics: true,';
  final String beRuleDescription = 'When focused on the ImageView,'
      ' because an accessibilityLabel attribute '
      'is not assigned, VoiceOver will announce'
      ' as trait value only \'image\'.';
  final String becodeSnippet = ' Semantics( \n '
      'child: Container( \n child: ImageWidget'
      'label: \'Decorative background\', \n ),';

  @override
  Widget build(BuildContext context) {

    var assertImagePAth = new AssetImage('assets/images/decorativeimage.png');
    var imgObject = new Image(
      image: assertImagePAth,
      fit: BoxFit.cover,
      width: 150,
      height: 150,
    );

    var beassertImagePAth = new AssetImage('assets/images/decorativeimagesquares.png');
    var beimgObject = new Image(
      image: assertImagePAth,
      fit: BoxFit.cover,
      width: 150,
      height: 150,
    );

    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: SCs.AltTextDecorativeImages.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.AltTextDecorativeImages.name),
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
                      HeaderSemanticWithText('Good Example: ImageView without accessibility description'),
                      Text(ruleDescription),
                    ],
                  )
              ),
            ),
            SizedBox(height: 15,),
            Semantics(
              excludeSemantics: true,
              child: Container(
                child: imgObject,
              ),
            ),
            CodeSinppetWidget(codeSnippet: codeSnippet),
            Divider(),
            Semantics(
              child: Container(
                  padding: EdgeInsets.only(left: 15,right: 15),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      HeaderSemanticWithText('Bad Example: ImageView with accessibility description'),
                      Text(beRuleDescription),
                    ],
                  )
              ),
            ),
            SizedBox(height: 15,),
            Semantics(
              label: 'Decorative background',
              child: Container(
                  child:beimgObject
              ),
            ),
            CodeSinppetWidget(codeSnippet: becodeSnippet),
            SizedBox(height: 45,)
          ],
        ),
      ),
    );
  }
}