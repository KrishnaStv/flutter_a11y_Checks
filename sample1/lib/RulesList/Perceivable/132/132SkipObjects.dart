import 'package:sample1/importFiles.dart';
import 'package:flutter/semantics.dart';

class SkipReadingOrderSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SkipReadingOrderSampleState();
  }
}

class SkipReadingOrderSampleState extends State<SkipReadingOrderSample> {
  final String ruleDescription =
      'The reading and navigation order (determined by code order)'
      ' MUST be logical and intuitive.';
  final String geDescription = 'In the below example, all '
      '4 UIElements are accessible';
  final String beDescription = 'In the below example last name label'
      ' is skipped from VoiceOver';

  final String codeSnippet = '//use OrdinalSortKey \n Expanded( \n'
      ' child: Column( \n children: [ \n Container( \n'
      ' alignment: Alignment.topLeft, \n child: Semantics( \n '
      'child: Text("First Name"), \n ), \n '
      '), \n Semantics( \n child: TextField( \n decoration: \n '
      'InputDecoration(hintText: \'Enter First Name\'), \n ),'
      '), ], ),) ';

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata:
              TopBarData(title: '1.3.2.a – Reading Order', enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(
                          '1.3.2.a – Reading Order: \n Skip UIElements.'),
                    ],
                  ),
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
                      child: HeaderSemanticWithText(
                          'Good Example:Using swipe right/swipe '
                          'left on the screen check all UIElements are '
                          'accessible.'),
                    ),
                    Text(geDescription),
                  ],
                )),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Semantics(
                                child: Text("First Name"),
                                sortKey: OrdinalSortKey(1),
                              ),
                            ),
                            Semantics(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Enter First Name'),
                              ),
                              sortKey: OrdinalSortKey(2),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Semantics(
                                child: Text("Last Name"),
                                sortKey: OrdinalSortKey(3),
                              ),
                            ),
                            Semantics(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Enter Last Name'),
                              ),
                              sortKey: OrdinalSortKey(4),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              padding: EdgeInsets.only(left: 10, right: 10),
            ),
            SizedBox(
              height: 10,
            ),
            CodeSinppetWidget(codeSnippet: codeSnippet),
            SizedBox(
              height: 25,
            ),
            Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: HeaderSemanticWithText(
                          'Bad Example:Using swipe right/swipe'
                          ' left on the screen check some UI elements are not accessible'),
                    ),
                    Text(beDescription),
                  ],
                )),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Semantics(
                                child: Text("First Name"),
                              ),
                            ),
                            Semantics(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Enter First Name'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Semantics(
                                excludeSemantics: true,
                                child: Text("Last Name"),
                              ),
                            ),
                            Semantics(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Enter Last Name'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              padding: EdgeInsets.only(left: 10, right: 10),
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
