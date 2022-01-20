import 'package:flutter/material.dart';
import 'package:sample1/Extensions/AppBarExtension.dart';
import 'package:sample1/Extensions/Extensions.dart';

class DescriptiveHeadingSample extends StatelessWidget {

  final String ruleDescription =
      'Page headings MUST be sufficiently descriptive and informative.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: 'Descriptive Headings', enableBack: true)),
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
                    Text('The sample below makes sure the headings for sections'
                        ' and subsections are adequately descriptive.'),
                    SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: HeaderSemanticWithText('  Disaster Management'),
                    ),
                    SizedBox(height: 10,),
                    Semantics(
                      header: true,
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: HeaderSemanticWithText('  Flood Management'),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Semantics(
                      header: true,
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: HeaderSemanticWithText('  Fire Management'),
                      ),
                    )
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
                    Text('The sample below headings miss a meaningful '
                        'descriptiveness and fail to convey the context.'),
                    SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: HeaderSemanticWithText(' Diaster'),
                    ),
                    SizedBox(height: 10,),
                   Container(
                        alignment: Alignment.topLeft,
                        child: HeaderSemanticWithText('  Read more...'),
                    ),
                    SizedBox(height: 10,),
                  Container(
                        alignment: Alignment.topLeft,
                        child: HeaderSemanticWithText('  Know more...'),
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