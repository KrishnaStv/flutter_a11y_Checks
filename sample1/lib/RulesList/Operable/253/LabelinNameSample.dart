import 'package:sample1/importFiles.dart';

class LabelinNameSample extends StatelessWidget {
  final String ruleDescription = 'For each user interface component '
      'that includes a visible text label, make sure the '
      'accessible name matches (or includes) the visible text in the label.';

  Image getImageFromPath(String path) {
    var assertImagePAth = new AssetImage(path);
    return Image(
      image: assertImagePAth,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata:
              TopBarData(title: SCs.LabelInName.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.LabelInName.name),
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
                  Text(' For Profile Screen profile picture change button'
                      ' visible label and the programmatic label must be same.'),
                  SizedBox(
                    height: 10,
                  ),
                  HeaderSemanticWithText('Profile'),
                  Semantics(
                    label: 'Profile image',
                    child: getImageFromPath('assets/images/profile.png'),
                  ),
                  Semantics(
                    label: 'Tap to Change Avatar',
                    child: Semantics(
                      child: ElevatedButton(
                        child: Text('Change Avatar'),
                        onPressed: () {},
                      ),
                      excludeSemantics: true,
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
                  Text('For Profile Screen profile picture change button '
                      'visible label and the programmatic label are different.'),
                  SizedBox(
                    height: 10,
                  ),
                  HeaderSemanticWithText('Profile'),
                  Semantics(
                    label: 'Profile image',
                    child: getImageFromPath('assets/images/profile.png'),
                  ),
                  Semantics(
                    label: 'Tap to Change Profile photo',
                    child: Semantics(
                      child: ElevatedButton(
                        child: Text('Change Avatar'),
                        onPressed: () {},
                      ),
                      excludeSemantics: true,
                    ),
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
