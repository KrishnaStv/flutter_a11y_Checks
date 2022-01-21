import 'package:flutter/material.dart';
import 'package:sample1/Extensions/AppBarExtension.dart';
import 'package:sample1/Extensions/Extensions.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';

class NameRoleValueSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new NameRoleValueSampleState();
  }
}

class NameRoleValueSampleState extends State<NameRoleValueSample> {

  final String ruleDescription = 'The name, role and value of page'
      ' components MUST be programmatically determinable '
      'by assistive technologies.';

  var geDesc = ' Make sure the screen reader correctly conveys'
      ' (see expectations detailed below) the following '
      'information about each component: \n '
      'Its role: e.g. button, link, switch, picker,'
      ' slider, stepper, switch, text field, alert, tab, etc. \n '
      'Its name: e.g. a label for a form control or '
      'button, the name of the tab, the label of a switch, etc. \n '
      ' If applicable, its value or state: e.g. on / off,'
      ' selected, dimmed, adjustable, expanded / '
      'collapsed, slider\'s value, text field\'s value, \"tab _ of _\", etc.';
  var geCodeSnippet1 = ' Code snippet';
  var isGERadioButtonSelected  = false;
  var isGECheckboxButtonSelected  = false;
  var isGESwitchSelected = false;
  double gecurrentValue = 0;
  late Timer geProgresstimer;
  double geProgresscurrentValue = 0;

  void startFlashingTimer() {
    const oneSec = const Duration(seconds: 1);
    geProgresstimer = new Timer.periodic(oneSec, (Timer timer) {
      setState(() {
        if(geProgresscurrentValue < 1) {
          geProgresscurrentValue += 0.1;
        } else {
          geProgresstimer.cancel();
        }
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startFlashingTimer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: 'Name, Role, Value', enableBack: true)),
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
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              alignment: Alignment.topLeft,
              child: HeaderSemanticWithText('Good Example:'),
            ),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              alignment: Alignment.topLeft,
              child: Text(geDesc),
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              alignment: Alignment.topLeft,
              child: HeaderSemanticWithText('Name / Role:'),
            ),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              alignment: Alignment.topLeft,
              child: Text('By default, accessibilityTraits will be assigned for some UIElements'),
            ),
            Container(
              child: Row(
                children: [
                 Semantics(
                   label: isGERadioButtonSelected? "Selected" : "" + "Send Emails on exciting offer",
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
                    child: Text(geCodeSnippet1, style: TextStyle(color: Colors.white),),
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
                    label: isGECheckboxButtonSelected? "Selected" : "" + "I agree to the terms and conditions",
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
                    child: Text(geCodeSnippet1, style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
              alignment: Alignment.center,
            ),
            Divider(),
            MaterialButton(onPressed: (){ },
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('CREATE ACCOUNT'),),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: Text('VoiceOver will announce as \'Create Account, Button\''),
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
                    child: Text(geCodeSnippet1, style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
              alignment: Alignment.center,
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.topLeft,
              child: Text('Set Volume',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),),
            ),
            Container(
              child: Slider(
                  value: gecurrentValue,
                  max: 100,
                  divisions: 5,
                  label: 'Set Volume' ,
                  onChanged: (double value) {
                    setState(() {
                      gecurrentValue = value;
                    });
                  }),
            ),
            SizedBox(height: 25,),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: Text('VoiceOver will announce as \'Set Volume: $gecurrentValue,'
                  ' adjustable, Swipe up or down with one'
                  ' finger to adjust the value'),
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
                    child: Text(geCodeSnippet1, style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
              alignment: Alignment.center,
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: Row(
                children: [
                  Text('Set Mute'),
                  SizedBox(width: 20,),
                 Semantics(
                   value: isGESwitchSelected ? 'ON' : 'OFF',
                   label: 'Set Mute',
                   child:  CupertinoSwitch(
                     value: isGESwitchSelected,
                     onChanged: (value) {
                       setState(() {
                         isGESwitchSelected = value;
                       });
                     },
                   ),
                 ),
                ],
              ),
            ),
            SizedBox(height: 25,),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: Text('VoiceOver will announce as \'Set Mute,Switch button $isGESwitchSelected,'
                  ' Double-tap to toggle setting'),
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
                    child: Text(geCodeSnippet1, style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
              alignment: Alignment.center,
            ),
            Divider(),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 15,right: 15),
              child: Text('Download Progress', style: TextStyle(fontWeight: FontWeight.normal),),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 15,right: 15),
              child: LinearProgressIndicator(
                semanticsLabel: 'Download Progress',
                semanticsValue: geProgresscurrentValue.toString(),
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue,),
                value: geProgresscurrentValue,
              ),
            ),
            SizedBox(height: 25,),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: Text('VoiceOver will announce as \'Download Progress $geProgresscurrentValue, \'(Current Value)\''),
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
                    child: Text(geCodeSnippet1, style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
              alignment: Alignment.center,
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
