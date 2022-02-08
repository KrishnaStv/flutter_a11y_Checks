import 'package:sample1/importFiles.dart';

class AltTextInformativeImages extends StatelessWidget {
  final String ruleDescription =
      'All images that convey meaningful information MUST use a'
      ' descriptive Semantic label attribute to specify a '
      'textual description of the element (Image) such that'
      ' screen readers and other accessibility tools can '
      'adequately describe it.';
  final String geRuleDescription =
      'When the UIImageView receives VoiceOver focus,'
      ' VoiceOver announces the provided value of '
      'Semantic label along with the element trait. '
      'VoiceOver will announce \'sunset as a sea, image.\'.';
  final String codeSnippet = ' Semantics( \n '
      'child: Container( \n child: ImageWidget'
      'label: \'sunset as a sea, image\',),';
  final String beRuleDescription = 'When focused on the ImageView,'
      ' because an semantics Labels attribute '
      'is not assigned, VoiceOver will announce'
      ' as trait value only \'image\'.';
  final String becodeSnippet = ' Semantics( \n '
      'child: Container( \n child: ImageWidget'
      'label: \'\', \n ),';

  @override
  Widget build(BuildContext context) {
    var assertImagePAth = new AssetImage('assets/images/sunset.jpg');
    var imgObject = new Image(
      image: assertImagePAth,
      fit: BoxFit.cover,
      width: 150,
      height: 100,
    );

    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(
              title: SCs.AltTextInformativeImages.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.AltTextInformativeImages.name),
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
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: HeaderSemanticWithText(
                            'Good Example: ImageView with accessibility description'),
                      ),
                      Text(ruleDescription),
                    ],
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Semantics(
              child: Container(
                child: imgObject,
              ),
              label: 'sunset as a sea',
            ),
            CodeSinppetWidget(codeSnippet: codeSnippet),
            Divider(),
            Semantics(
              child: Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: HeaderSemanticWithText(
                            'Bad Example: ImageView without accessibility description'),
                      ),
                      Text(beRuleDescription),
                    ],
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Semantics(
              child: Container(child: imgObject),
            ),
            CodeSinppetWidget(codeSnippet: becodeSnippet),
            SizedBox(
              height: 45,
            )
          ],
        ),
      ),
    );
  }
}
