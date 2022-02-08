import 'package:sample1/importFiles.dart';

class AltTextAudioOrVideoImages extends StatelessWidget {
  final String ruleDescription = 'Text alternatives must be provided to'
      ' identify the purpose of the video or audio content.';
  final String geRuleDescription = 'When focused on the Imageview below, '
      'VoiceOver will announce as the provided value of Semantic label '
      'description. \n For Audio file VoiceOver will announce as \'Play '
      'the Alphabets of first four, button.\' \n For  Video file VoiceOVer will'
      ' announce as \' Play the Video of cartoon wakeup, button.\' '
      '(For this example, we took button as the file representation,'
      ' we can take other familiar UIelements)';
  final String codeSnippet = '//for Audio \n Semantics( \n '
      'child: Container( \n child: ImageWidget'
      'label: \'Play the Alphabets of first four\',\n //for Video \n '
      'Semantics( \n '
      'child: Container( \n child: ImageWidget'
      'label: \'Play the video of cartoon wakeup\',';
  final String beRuleDescription = 'When focused on the ImageView,'
      ' because an semantics Labels attribute '
      'is not assigned, VoiceOver will announce'
      ' as unlabelled along with trait value \'image\'. No alternative way for '
      'captcha like Audio clip.';
  final String becodeSnippet = ' Semantics( \n '
      'child: Container( \n child: ImageWidget, ),';

  @override
  Widget build(BuildContext context) {
    var audassertImagePAth = new AssetImage('assets/images/1.1.1.h.audio.png');
    var audimgObject = new Semantics(
      child: Image(
        image: audassertImagePAth,
        fit: BoxFit.cover,
        width: 150,
        height: 150,
      ),
      excludeSemantics: true,
    );

    var vidassertImagePAth = new AssetImage('assets/images/1.1.1.h.video.png');
    var vidimgObject = new Semantics(
      child: Image(
        image: vidassertImagePAth,
        fit: BoxFit.cover,
        width: 150,
        height: 150,
      ),
      excludeSemantics: true,
    );

    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(
              title: SCs.AltTextAudioVideoImages.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.AltTextAudioVideoImages.name),
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
                            'Good Example: Audio and Video '
                            'file must have accessibility description  to '
                            'represent the file description.'),
                      ),
                      Text(geRuleDescription),
                    ],
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Semantics(
                  button: true,
                  label: 'Play the Alphabets of first four',
                  child: Container(
                    width: 60,
                    height: 60,
                    child: audimgObject,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Semantics(
                  button: true,
                  label: 'Play the Video of cartoon wakeup',
                  child: Container(
                    width: 90,
                    height: 75,
                    child: vidimgObject,
                  ),
                ),
              ],
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
                            'Bad Example: Audio and Video files without accessibility description'),
                      ),
                      Text(beRuleDescription),
                    ],
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Semantics(
                  enabled: true,
                  image: true,
                  child: Container(
                    width: 60,
                    height: 60,
                    child: audimgObject,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Semantics(
                  enabled: true,
                  child: Container(
                    width: 90,
                    height: 75,
                    child: vidimgObject,
                  ),
                  image: true,
                ),
              ],
            ),
            SizedBox(
              height: 45,
            ),
          ],
        ),
      ),
    );
  }
}
