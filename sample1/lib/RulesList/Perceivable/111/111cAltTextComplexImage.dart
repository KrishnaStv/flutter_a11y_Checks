import 'package:sample1/importFiles.dart';

class AltTextComplexImages extends StatelessWidget {

  final String ruleDescription =
      'Images that are too complex content information MUST use a'
      ' descriptive Semantic label attribute to specify a'
      ' textual description of the complex content such that '
      'screen readers and other accessibility tools can '
      'adequately describe it.';
  final String geRuleDescription =
      'When the UIImageView receives VoiceOver focus,'
      ' VoiceOver announces the provided value of '
      'Semantic label along with the element trait. '
      'VoiceOver will announce \'a bar graph showing data of number of students '
      'that love pizza, burger, and salad. The graph plots pizza, '
      'burger, and salad on the x-axis, and numbers on the y-axis'
      ' and shows 15 for pizza, 24 for a burger, and 11 for salad\'.';
  final String codeSnippet = ' Semantics( \n '
      'child: Container( \n child: ImageWidget'
      'label: \'a bar graph showing data of'
      ' number of students that love pizza,'
      ' burger, and salad. The graph plots pizza,'
      ' burger, and salad on the x-axis, '
      'and numbers on the y-axis and shows'
      ' 15 for pizza, 24 for a burger, and 11 for salad, image\',),';
  final String beRuleDescription = 'When focused on the ImageView,'
      ' because an accessibilityLabel attribute '
      'is not assigned, VoiceOver will announce'
      ' as trait value only \'image\'.';
  final String becodeSnippet = ' Semantics( \n '
      'child: Container( \n child: ImageWidget'
      'label: \'\', \n ),';

  @override
  Widget build(BuildContext context) {

    var assertImagePAth = new AssetImage('assets/images/graphfavouritefood.png');
    var imgObject = new Image(
      image: assertImagePAth,
      fit: BoxFit.cover,
      width: 150,
      height: 150,
    );

    var beassertImagePAth = new AssetImage('assets/images/recommendeddietpiechart.png');
    var beimgObject = new Image(
      image: assertImagePAth,
      fit: BoxFit.cover,
      width: 150,
      height: 150,
    );

    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: SCs.AltTextComplexImages.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.AltTextComplexImages.name),
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
                child: imgObject,
              ),
              label: 'a bar graph showing data of number of students that '
                  'love pizza, burger, and salad. The graph plots pizza, '
                  'burger, and salad on the x-axis, and numbers on the'
                  ' y-axis and shows 15 for pizza, 24 for a burger,'
                  ' and 11 for salad',
            ),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              child:Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText('Code Snippet'),
                    ],
                  ),
                  Container(
                    color: Colors.black,
                    child: Text(codeSnippet, style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
              alignment: Alignment.center,
            ),
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
                child:beimgObject
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              child:Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText('Code Snippet'),
                    ],
                  ),
                  Container(
                    color: Colors.black,
                    child: Text(becodeSnippet, style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
              alignment: Alignment.center,
            ),
            SizedBox(height: 45,)
          ],
        ),
      ),
    );
  }
}