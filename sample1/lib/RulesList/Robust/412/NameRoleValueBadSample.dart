import 'package:flutter/material.dart';
import 'package:sample1/Extensions/AppExtension.dart';
import 'package:flutter/cupertino.dart';

class NameRoleValueBadSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new NameRoleValueBadSampleState();
  }
}

class NameRoleValueBadSampleState extends State<NameRoleValueBadSample> {

  bool isGERadioButtonSelected = false;
  bool isGECheckboxButtonSelected = false;
  var selectedSegment = 0;

  final Map<int, Widget> logoWidgets = const <int, Widget> {
    0: Text(' iOS '),
    1: Text(' Android '),
    2: Text(' Linux ')
  };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: new AppBarExtension(
            navdata: TopBarData(title: 'Bad Examples of Name, Role', enableBack: true)),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    alignment: Alignment.topLeft,
                    child: Text('By default, accessibilityTraits will be assigned for some UIElements'),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Semantics(
                          label: "Send Emails on exciting offer",
                          child:  IconButton(
                              onPressed: (){
                                setState(() {
                                  isGERadioButtonSelected = !isGERadioButtonSelected;
                                });
                              },
                              icon: isGERadioButtonSelected ?
                              Image.asset('assets/images/radio_button_selected.png') :
                              Image.asset('assets/images/radio_button.png')),
                        ),
                        Text('Send me emails on exciting offers'),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: Text('VoiceOver will announce as \'Send me emails on exciting offers, Button\''),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child:Column(
                      children: [
                        Row(
                          children: [
                            HeaderSemanticWithText('Code Snippet'),
                          ],
                        ),
                        Container(
                          color: Colors.black,
                          child: Text('code snippet', style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      children: [
                        Semantics(
                            label: "I agree to the terms and conditions",
                            child: Checkbox(value: isGECheckboxButtonSelected,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isGECheckboxButtonSelected = value ?? false;
                                  });
                                })
                        ),
                        Text('I agree to the terms and conditions'),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: Text('VoiceOver will announce as \'I agree to the terms and conditions, Button\''),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child:Column(
                      children: [
                        Row(
                          children: [
                            HeaderSemanticWithText('Code Snippet'),
                          ],
                        ),
                        Container(
                          color: Colors.black,
                          child: Text('Code snippet', style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                  ),
                  Divider(),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: Text('Filter Selection', style: TextStyle(fontWeight: FontWeight.normal),),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: CupertinoSegmentedControl(
                      padding: EdgeInsets.all(5),
                      children: logoWidgets,
                      onValueChanged: (int val) {
                        setState(() {
                          selectedSegment = val;
                        });
                      },
                      groupValue: selectedSegment,
                    ),
                  ),
                  SizedBox(height: 25,),
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: Text('VoiceOver will announce as \'iOS, Button, \'(Current Value)\''),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child:Column(
                      children: [
                        Row(
                          children: [
                            HeaderSemanticWithText('Code Snippet'),
                          ],
                        ),
                        Container(
                          color: Colors.black,
                          child: Text('Code Snippet', style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                  ),
                  Divider(),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: Text('Button Accessibility', style: TextStyle(fontWeight: FontWeight.normal),),
                  ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('Button with Image only'),
                     IconButton(onPressed: (){}, icon: Image.asset('assets/images/playbutton.png') ),
                   ],
                 ),
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: Text('If button does not contains any title, if button '
                        'image exist VoiceOver will announce as \'Button\'.'),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Button with Image only'),
                      MaterialButton(onPressed: (){}, child: null, color: Colors.red,),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: Text('If button does not contains any title, if button '
                        'image exist VoiceOver will announce as \'Button\'.'),                  ),
                  Divider(),
                ]
            )
        )
    );
  }
}