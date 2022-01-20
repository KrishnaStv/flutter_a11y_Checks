import 'package:flutter/material.dart';
import 'package:sample1/Extensions/AppBarExtension.dart';
import 'package:sample1/Extensions/Extensions.dart';

class LabelinNameSample extends StatelessWidget {

  final String ruleDescription =
      'For each user interface component '
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
          navdata: TopBarData(title: 'Label in Name', enableBack: true)),
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
            Semantics(
              child:
              Container(
                alignment: Alignment.topLeft,
                child: HeaderSemanticWithText('  Good Example'),
              ),
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(' For Profile Screen profile picture change button'
                        ' visible label and the programmatic label must be same.'),
                    SizedBox(height: 10,),
                    HeaderSemanticWithText('Profile'),
                    getImageFromPath('assets/images/profile.png'),
                    Semantics(
                      label: 'Tap to Change Avatar',
                      child: ElevatedButton(child: Text('Change Avatar'), onPressed: () {},),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
            Semantics(
              child:
              Container(
                alignment: Alignment.topLeft,
                child: HeaderSemanticWithText('  Bad Example'),
              ),
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(' For Profile Screen profile picture change button '
                        'visible label and the programmatic label are different.'),
                    SizedBox(height: 10,),
                    HeaderSemanticWithText('Profile'),
                    getImageFromPath('assets/images/profile.png'),
                    Semantics(
                      label: 'Tap to Change Profile photo',
                      child: ElevatedButton(child: Text('Change Avatar'), onPressed: () {},),
                    ),
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