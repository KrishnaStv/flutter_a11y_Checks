import 'package:flutter/material.dart';
import 'package:sample1/Extensions/AppBarExtension.dart';
import 'package:sample1/Extensions/Extensions.dart';

class ContextChangeOnFocusSample extends StatelessWidget {

  final String ruleDescription =
      'When a screen element receives focus, it MUST NOT result in '
      'a substantial change to the screen, the spawning of a '
      'pop-up window, an additional change of keyboard focus,'
      ' or any other change that could confuse or disorient the user.';

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
          navdata: TopBarData(title: 'Context Changes (on Focus)', enableBack: true)),
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
                    Text('  The sample below shows a scenario where the focus'
                        ' arrives at the \'Apply Coupon\' button and waits '
                        'for users’ action to open coupon modal/dialog'
                        ' rather than automatically opening a dialog or'
                        ' redirecting to a new screen.'),
                    SizedBox(height: 10,),
                    Semantics(
                      label: 'Tap to Change Avatar',
                      child: ElevatedButton(child: Text('APPLY COUPON'), onPressed: () {},),
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
                    Text('  The sample below allows a change '
                        'in context as soon as focus arrives '
                        'at the controls (buttons here) rather '
                        'than waiting for user action.'),
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