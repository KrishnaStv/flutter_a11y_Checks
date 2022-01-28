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
  var beCS1 = 'Semantics( \n label: "Send Emails on exciting offer", \n child:  IconButton( \n onPressed: (){ \n setState(() {\n isGERadioButtonSelected = !isGERadioButtonSelected; \n }); \n }, \n icon: isGERadioButtonSelected ? \n Image.asset(\'assets/images/radio_button_selected.png\') : \n Image.asset(\'assets/images/radio_button.png\')), \n )';

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
                  SizedBox(height: 25,),
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
                    child: Text('VoiceOver will announce as \'Send me emails on exciting offers, Button, image\''),
                  ),
                  SizedBox(height: 10,),
                  CodeSinppetWidget(codeSnippet: beCS1),
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
                        'image exist VoiceOver will announce as \'Button, Image\'.'),
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
                  SizedBox(height: 45,),
                ]
            )
        )
    );
  }
}