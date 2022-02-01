import 'package:sample1/RulesList/Perceivable/132/132SkipObjects.dart';
import 'package:sample1/importFiles.dart';
import 'package:flutter/semantics.dart';

class ReadingOrderSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ReadingOrderSampleState();
  }
}

class ReadingOrderSampleState extends State<ReadingOrderSample> {
  final String ruleDescription =
      'The reading and navigation order (determined by code order)'
      ' MUST be logical and intuitive.';
  final String geDescription = ' In the below example,'
      ' the VoiceOver reading order must meaningful. \n VoiceOver focus'
      ' will move to First name, First name enter text field, '
      'Last name, Last name enter text field.';
  final String beDescription = 'In the below example,'
      ' the VoiceOver reading order is not meaningful. \n VoiceOver '
      'focus will move to First name, Last name, '
      'First name enter text field, the Last name enters text field.';

  final String codeSnippet = '//use OrdinalSortKey \n Expanded( \n'
      ' child: Column( \n children: [ \n Container( \n'
      ' alignment: Alignment.topLeft, \n child: Semantics( \n '
      'child: Text("First Name"), \n sortKey: OrdinalSortKey(1), \n ), \n '
      '), \n Semantics( \n child: TextField( \n decoration: \n '
      'InputDecoration(hintText: \'Enter First Name\'), \n ), \n '
      'sortKey: OrdinalSortKey(2), ), ], ), ) ';

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata:
              TopBarData(title: SCs.ReadingOrder.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.ReadingOrder.name),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
            Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    HeaderSemanticWithText('Good Example: Using swipe'
                        ' right/swipe left on the screen check '
                        'Semantics Label attributes to manage reading order.'),
                    Text(geDescription),
                  ],
                )
            ),
            SizedBox(height: 15,),
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
                                decoration:
                                    InputDecoration(hintText: 'Enter First Name'),
                              ),
                              sortKey: OrdinalSortKey(2),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
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
                                decoration:
                                    InputDecoration(hintText: 'Enter Last Name'),
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
            SizedBox(height: 10,),
            CodeSinppetWidget(codeSnippet: codeSnippet),
            SizedBox(height: 25,),
            Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    HeaderSemanticWithText('Bad Example: Using swipe '
                        'right/swipe left on the screen, '
                        'the focus order is not correct.'),
                    Text(beDescription),
                  ],
                )
            ),
            SizedBox(height: 15,),
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
                                decoration:
                                InputDecoration(hintText: 'Enter First Name'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Semantics(
                                child: Text("Last Name"),
                              ),
                            ),
                            Semantics(
                              child: TextField(
                                decoration:
                                InputDecoration(hintText: 'Enter Last Name'),
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
            Divider(),
            ElevatedButton(child: Text('Skip Objects'), onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SkipReadingOrderSample();
              })
              );
            },),
            SizedBox(height: 45,),
          ],
        ),
      ),
    );
  }
}
