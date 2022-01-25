import 'package:sample1/importFiles.dart';
import 'package:audioplayers/audioplayers.dart';

class AltTextCaptchaImages extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AltTextCaptchaImagesState();
  }
}

class AltTextCaptchaImagesState extends State<AltTextCaptchaImages> {
  final String ruleDescription = 'Interactions designed to verify human users'
      ' must not rely on a single sense to be '
      'successfully completed and alternate forms '
      'using different modalities must be provided'
      ' to address the needs of people with different disabilities.';
  final String geRuleDescription = 'When focused on the Imageview below, '
      'VoiceOver will announce as the provided value of Semantic label '
      'description. \n VoiceOver will announce as \'Captcha text contains'
      ' first two Capital, next two small alphabets. '
      'The audio clip also available, image.\'';
  final String codeSnippet = ' Semantics( \n '
      'child: Container( \n child: ImageWidget'
      'excludeSemantics: true,';
  final String beRuleDescription = 'When focused on the ImageView,'
      ' because an accessibilityLabel attribute '
      'is not assigned, VoiceOver will announce'
      ' as trait value only \'image\'. No alternative way for '
      'captcha like Audio clip.';
  final String becodeSnippet = ' Semantics( \n '
      'child: Container( \n child: ImageWidget, ),';

  AudioCache audioCache = AudioCache();
  AudioPlayer advancedPlayer = AudioPlayer();

  void playAudio() {
    audioCache.play('Audio/ABcd.mp3');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    advancedPlayer.stop();
    advancedPlayer.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }

  @override
  Widget build(BuildContext context) {

    var assertImagePAth = new AssetImage('assets/images/captcha.jpeg');
    var imgObject = new Image(
      image: assertImagePAth,
      fit: BoxFit.cover,
      width: 150,
      height: 150,
    );

    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(
              title: SCs.AltTextCaptchaImages.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.AltTextCaptchaImages.name),
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
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      HeaderSemanticWithText('Good Example: CAPTCHA image with'
                          ' captcha hint as accessibility description and audio '
                          'clip as another alternative'),
                      Text(geRuleDescription),
                    ],
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(width: 25,),
                Semantics(
                  label:
                      ' first two Capital, next two small alphabets. '
                      'The audio clip also available',
                  child: Container(
                    width: 250,
                    height: 45,
                    child: imgObject,
                  ),
                ),
                Semantics(
                  child: IconButton(icon:Image.asset('assets/images/speaker.png'),
                    onPressed: (){
                      playAudio();
                    },),
                )
              ],
            ),
            Divider(),
            Semantics(
              child: Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      HeaderSemanticWithText(
                          'Bad Example: ImageView without accessibility description'),
                      Text(beRuleDescription),
                    ],
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Semantics(
              child: Container(width: 250,
                  height: 45,
                  child: imgObject),
            ),
          ],
        ),
      ),
    );
  }
}
