import 'package:sample1/importFiles.dart';

class AltTextActiveImages extends StatelessWidget {

  final String ruleDescription =
      'All actionable / clickable ImageViews and ImageButtons'
      ' MUST use a descriptive Semantic label attribute '
      'to specify a textual description of the element (Image)'
      ' such that screen readers and other accessibility tools'
      ' can adequately describe it.';
  final String geRuleDescription =
      'When the UIImageView receives VoiceOver focus,'
      ' VoiceOver announces the provided value of '
      'Semantic label along with the element trait. '
      'VoiceOver will announce “50% off, shop now, button”.';
  final String codeSnippet = ' Semantics( \n '
      'child: Container( \n child: ImageWidget'
      'button: true, \n '
      'label: \'50% off shop now\',),';
  final String beRuleDescription = 'When focused on the ImageView,'
      ' because an accessibilityLabel attribute '
      'is not assigned, VoiceOver will announce'
      ' as trait value only \'image\'.';
  final String becodeSnippet = ' Semantics( \n '
      'child: Container( \n child: ImageWidget'
      'button: true, \n '
      'label: \'\', \n ),';

  @override
  Widget build(BuildContext context) {

    var assertImagePAth = new AssetImage('assets/images/discount50pc.png');
    var imgObject = new Semantics(
      child: Image(
        image: assertImagePAth,
        fit: BoxFit.cover,
        width: 180,
        height: 150,
      ),
      excludeSemantics: true,
    );

    var beimgObject = new Image(
      image: assertImagePAth,
      fit: BoxFit.cover,
      width: 180,
      height: 150,
    );

    void activeImageTap() {
      showDialog(
          context: context,
          builder: (dialogueContext) {
            return ModelDialogue(
              title: 'Active Image',
            );
          });
    }

    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: SCs.AltTextActiveImages.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.AltTextActiveImages.name),
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
                    HeaderSemanticWithText('Good Example: ImageView with accessibility description'),
                    Text(ruleDescription),
                  ],
                )
              ),
            ),
            SizedBox(height: 15,),
            Semantics(
              child: Container(
                child: GestureDetector(
                  onTap: activeImageTap,
                  child: imgObject,
                ),
              ),
              button: true,
              label: '50% off shop now',
            ),
            CodeSinppetWidget(codeSnippet: codeSnippet),
            Divider(),
            Semantics(
              child: Container(
                  padding: EdgeInsets.only(left: 15,right: 15),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      HeaderSemanticWithText('Bad Example: ImageView without accessibility description'),
                      Text(beRuleDescription),
                    ],
                  )
              ),
            ),
            SizedBox(height: 15,),
            Semantics(
              child: Container(
                child: GestureDetector(
                  onTap: activeImageTap,
                  child: beimgObject,
                ),
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