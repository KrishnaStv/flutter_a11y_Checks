import 'package:sample1/importFiles.dart';
import 'dart:async';
import 'package:flutter/semantics.dart';

class CustomGesturesSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new CustomGesturesSampleState();
  }
}

class CustomGesturesSampleState extends State<CustomGesturesSample> {
  final String ruleDescription =
      'All functionalities based on custom gestures must also'
      ' be available when a screen reader is turned on.';

  var isVerticalDragStart = false;
  var isHorizontalDragStart = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(
              title: SCs.CustomGestures.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.CustomGestures.name),
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
                  Text('The below example contains a custom VerticalLine,'
                      ' Horizontal line gesture to do some functionality.\n '
                      'And given accessibility action for the same gesture.'),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (BuildContext alertContext) {
                              return AlertDialog(
                                backgroundColor: Colors.transparent,
                                content: Semantics(
                                  label: 'Custom Gesture actions',
                                  child: Container(
                                    width: 250,
                                    height: 250,
                                    color: Colors.grey,
                                    child: GestureDetector(
                                      onVerticalDragStart: (details) {
                                        isVerticalDragStart = true;
                                      },
                                      onVerticalDragEnd: (details) {
                                        if (isVerticalDragStart == true) {
                                          buildShowDialog(alertContext,
                                              'Vertical Drag gesture detected');
                                        }
                                      },
                                      onHorizontalDragStart: (details) {
                                        isHorizontalDragStart = true;
                                      },
                                      onHorizontalDragEnd: (details) {
                                        if (isHorizontalDragStart == true) {
                                          buildShowDialog(alertContext,
                                              'Horizontal Drag gesture detected');
                                        }
                                      },
                                    ),
                                  ),
                                  customSemanticsActions: {
                                    CustomSemanticsAction(
                                        label: "Vertical Drag"): () {
                                      buildShowDialog(alertContext,
                                          'Vertical Drag gesture detected');
                                    },
                                    CustomSemanticsAction(
                                        label: "Horizontal Drag"): () {
                                      buildShowDialog(alertContext,
                                          'Horizontal Drag gesture detected');
                                    },
                                  },
                                ),
                              );
                            });
                      },
                      child: Text('Good Example')),
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
                  Text('The below example contains a custom VerticalLine,'
                      ' Horizontal line gesture to do some functionality.\n '),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (BuildContext alertContext) {
                              return AlertDialog(
                                backgroundColor: Colors.transparent,
                                content: Semantics(
                                  label: 'Custom Gesture actions',
                                  child: Container(
                                    width: 250,
                                    height: 250,
                                    color: Colors.grey,
                                    child: GestureDetector(
                                      onVerticalDragStart: (details) {
                                        isVerticalDragStart = true;
                                      },
                                      onVerticalDragEnd: (details) {
                                        if (isVerticalDragStart == true) {
                                          buildShowDialog(alertContext,
                                              'Vertical Drag gesture detected');
                                        }
                                      },
                                      onHorizontalDragStart: (details) {
                                        isHorizontalDragStart = true;
                                      },
                                      onHorizontalDragEnd: (details) {
                                        if (isHorizontalDragStart == true) {
                                          buildShowDialog(alertContext,
                                              'Horizontal Drag gesture detected');
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      child: Text('Bad Example')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> buildShowDialog(BuildContext alertContext, String content) {
    return showDialog(
        context: alertContext,
        builder: (BuildContext dragContext) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text(content),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(dragContext).pop();
                  },
                  child: Text('Okay'))
            ],
          );
        });
  }
}
