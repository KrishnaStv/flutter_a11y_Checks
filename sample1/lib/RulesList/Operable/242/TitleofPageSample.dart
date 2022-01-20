import 'package:flutter/material.dart';
import 'package:sample1/Extensions/AppBarExtension.dart';
import 'package:sample1/Extensions/Extensions.dart';
import 'dart:async';

class TitlesOfPageSample extends StatelessWidget {

  final String ruleDescription =
      'Screens MUST have meaningful and informative screen titles.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: 'Titles on Pages', enableBack: true)),
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
                    Text('In Flutter, if we use the default Appbar bar, the '
                        'Appbar title will take as Page title.We can use Container '
                        'also as a custom navigation representation. We need to '
                        'enable title label semantic as header.'),
                    SizedBox(height: 10,),
                    Container(
                      child: AppBar(
                        title: Text('Sample Title'),
                      ),
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
                    Text('The sample below misses a meaningful title '
                        'or misses a title completely.'),
                    SizedBox(height: 10,),
                    Container(
                      height: 60,
                     color: Colors.blue,
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