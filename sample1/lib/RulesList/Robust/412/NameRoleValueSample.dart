import 'package:sample1/RulesList/Robust/412/NameRoleValueBadSample.dart';
import 'package:sample1/RulesList/Robust/412/ValueSampleExample.dart';
import 'package:sample1/importFiles.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:sample1/RulesList/Robust/412/TabBarControllerSample.dart';


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
  double geProgresscurrentValue = 0.00;
  var selectedSegment = 0;

  var geCs1 = '\n Semantics( \n child: \n Semantics( \n child:buttonWidget, \n excludeSemantics: true \n), \n button:true, \n label:\' Send me emails of existing offers\', \n)';
  var geCs2 = '\n Semantics( \n child: \n buttonWidget, \n label:\' I agree to the terms and conditions\',) \n';
  var geCs3 = '\n By default Button title will  \n read as Semantics label attribute \n';
  var geCs4 = '\n By default Slider label will read as \n Semantics label attribute and value will \n  read as Semantics value attribute \n Slider(\n value: gecurrentValue, \n max: 100, \n divisions: 5,\n label: \'Set Volume\' ,\n onChanged: (double value) \n {setState(() \n {gecurrentValue = value; \n } \n ); \n } \n ) \n';
  var geCs5 = '\n Semantics( \n child: \n switchWidget, \n label:\' Set Mute\', \n value: \' On\') \n';
  var geCustomActionCS = '\n Using Semantics customSemanticsActions \n we can add custom rotor actions \n  for widgets.  Semantics( \n child: ElevatedButton(child: Text(\'Tap to Sound\'), onPressed: () { \n _showDialog(false, \'Alert\', \'Its Default Action\');\n },),\n customSemanticsActions: { \n CustomSemanticsAction(label: "Custom Action"): () { \n _showDialog(false, \'Alert\', \'Its Custom Action\'); \n }, \n }, \n ) \n';

  final Map<int, Widget> logoWidgets = const <int, Widget> {
    0: Text('iOS',semanticsLabel: 'iOS, 1 out of 3',),
    1: Text('Android', semanticsLabel: 'Android, 2 out of 3',),
    2: Text('Linux',semanticsLabel: 'Linux, 3 out of 3',)
  };

  void startProgressTimer() {
    const oneSec = const Duration(seconds: 1);
    geProgresstimer = new Timer.periodic(oneSec, (Timer timer) {
      setState(() {
        if(geProgresscurrentValue < 1.0) {
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
    startProgressTimer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    geProgresstimer.cancel();
    super.dispose();
  }

  Future<void> _showDialog(bool enableOutSideTap,
      String title,
      String description) async {
    List<Widget> widgets = [];

    return showDialog(context: context,
        barrierDismissible: enableOutSideTap,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text(description),
                ],
              ),
            ),
            actions: [
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: Text('Okay')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: SCs.NameRoleValue.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.NameRoleValue.name),
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
                   button: true,
                   label: isGERadioButtonSelected? "Selected" : "" + "Send Emails on exciting offer",
                   child:  Semantics(
                     excludeSemantics: true,
                     child: IconButton(
                         onPressed: (){
                           setState(() {
                             isGERadioButtonSelected = !isGERadioButtonSelected;
                           });
                         },
                         icon: isGERadioButtonSelected ?
                         Image.asset('assets/images/radio_button_selected.png') :
                         Image.asset('assets/images/radio_button.png')),
                   ),
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
            CodeSinppetWidget(codeSnippet: geCs1),
            Divider(),
            Container(
              child: Row(
                children: [
                  Semantics(
                    label: isGECheckboxButtonSelected? "Selected, I agree to the terms and conditions" : "I agree to the terms and conditions",
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
            CodeSinppetWidget(codeSnippet: geCs2),
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
            CodeSinppetWidget(codeSnippet: geCs3),
            Divider(),
            Container(
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.topLeft,
              child: Text('Set Volume',
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15),),
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
            CodeSinppetWidget(codeSnippet: geCs4),
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
            CodeSinppetWidget(codeSnippet: geCs5),
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
                semanticsValue: geProgresscurrentValue.toStringAsFixed(2),
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue,),
                value: geProgresscurrentValue,
              ),
            ),
            SizedBox(height: 25,),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: Text('VoiceOver will announce as \'Download Progress ${geProgresscurrentValue.toStringAsFixed(2)}, \'(Current Value)\''),
            ),
            Divider(),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 15,right: 15),
              child: Text('Filter Selection', style: TextStyle(fontWeight: FontWeight.normal),),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
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
              child: Text('VoiceOver will announce as \'(Current Value)\',\'iOS,1 out of 3, Button,'),
            ),
            SizedBox(height: 20,),
            Divider(),
            ElevatedButton(child: Text('Tab Bar Example'), onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return TabbarControllerSample();
              })
              );
            },),
            Divider(),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 15,right: 15),
              child: Text('Custom Actions', style: TextStyle(fontWeight: FontWeight.normal),),
            ),
            Semantics(
              child: ElevatedButton(child: Text('Tap to Sound'), onPressed: () {
                debugPrint("default action performed");
                _showDialog(false, 'Alert', 'Its Default Action');
              },),
              customSemanticsActions: {
              CustomSemanticsAction(label: "Custom Action"): () {
                debugPrint("custom action performed");
                _showDialog(false, 'Alert', 'Its Custom Action');
              },
            },
            ),
            SizedBox(height: 20,),
            CodeSinppetWidget(codeSnippet: geCustomActionCS),
            Divider(),
            ElevatedButton(child: Text('Name Role Bad Examples'), onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NameRoleValueBadSample();
              })
              );
            },),
            Divider(),
            ElevatedButton(child: Text('Value Examples'), onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ValuesSampleExample();
              })
              );
            },),
            SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }
}

