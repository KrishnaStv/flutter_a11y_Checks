import 'package:flutter/material.dart';
import 'package:sample1/Extensions/AppBarExtension.dart';
import 'package:sample1/Extensions/Extensions.dart';

class NonTextContrastActiveUI extends StatelessWidget {

  final String ruleDescription =
      'Regular text and images of regular text MUST have a contrast ratio of at least 4.5 to 1 with the background.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: 'Non-Text Contrast - Active User Interface Components', enableBack: true)),
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
            SizedBox(height: 30,),
            Semantics(
              child:
              HeaderSemanticWithText('Good Example'),
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.red,
                child: Column(
                  children: [

                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
            Semantics(
              child:
              HeaderSemanticWithText('Bad Example'),
            ),
            Semantics(
              child: Container(
                child: Column(
                  children: [
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
