import 'package:sample1/importFiles.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkColorContrastSample extends StatelessWidget {

  final String ruleDescription =
      'Color alone must not be used to distinguish links from surrounding text unless'
      ' the contrast ratio between the link and the surrounding text is at least 3:1.';
  final String iosA11yLink = 'https://www.deque.com/ios-accessibility/';

  void _launchURL() async {
    if (!await launch(iosA11yLink)) throw 'Could not launch $iosA11yLink';
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: 'Link Color Contrast', enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText('Description'),
                    ],
                  ),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
            HeaderSemanticWithText('Good Example'),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: Text(' Differentiate the link text from the non-link text '
                          'by applying bolding, italics, a chevron, arrow, outline,'
                          ' or another visual indicator. \n '
                          'If there is no other visual differentiation, '
                          'check that the color of the link text differs '
                          'from the color of the surrounding non-link text '
                          'by a color contrast ratio of at least 3:1.',
                        overflow: TextOverflow.clip,))
                      ,
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      _launchURL();
                    },
                    child: Semantics(
                      link: true,
                      child: Text(iosA11yLink, style:
                      TextStyle(decoration: TextDecoration.underline, color: Colors.blue)),
                    ),
                  ),
                ],
              ),
              padding: EdgeInsets.all(15),
            ),
            SizedBox(height: 45,),
            HeaderSemanticWithText('Bad Example'),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('There is no differentiation of links in the text'),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      _launchURL();
                    },
                    child: Semantics(
                      link: true,
                      child: Text(iosA11yLink),
                    ),
                  ),
                ],
              ),
              padding: EdgeInsets.all(15),
            ),
          ],
        ),
      ),
    );
  }
}