import 'package:flutter/material.dart';
import 'package:sample1/RulesList/ImageViewDescriptipons.dart';
import 'package:sample1/RulesList/AnnouncementExample.dart';
import 'package:sample1/RulesList/ColorContrast.dart';
import 'package:sample1/RulesList/AccessibilityActionsExample.dart';
import 'package:sample1/ElementsAccessible.dart';
import 'ReadingOrderExample.dart';
import 'SemanticHeadingExample.dart';

class RulesList extends StatelessWidget {

  final List<String> ruleSet = <String>["Text Alternative", "Announcements",
    "ColorContrast","Custom Accessibility Actions","Elements Accessible",
  "Swipe Reading Order", "Heading Trait"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rule List'),
        ),
        body: ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: _getListItemTile,
            separatorBuilder: (BuildContext context,int index) => const Divider(),
            itemCount: ruleSet.length),
      ),
    );
  }


  Widget _getListItemTile(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        print('index is ${index}');
        Navigator.push(context, new MaterialPageRoute(builder: (context) {
          switch(ruleSet[index]) {
            case 'Text Alternative': {
              return new ImageViewDescription();
            }
            case 'Announcements': {
              return new AnnouncementMyApp();
            }
            case 'ColorContrast': {
              return new Colorconstart();
            }
            case 'Custom Accessibility Actions': {
              return new CustomAccessibilityActionsSample();
            }
            case 'Elements Accessible': {
              return new ElementsAccessible();
            }
            case 'Swipe Reading Order': {
              return new ReadingOrderExample();
            }
            case 'Heading Trait': {
              return new SemanticHeadingSample();
            }
            default:{
              return new ImageViewDescription();
            }
          }
        })
        );
      },
      child: Container(
        height: 50,
        color: Colors.blueGrey,
        child: Center(
          child: Semantics(
            button: true,
              child:Text('${ruleSet[index]}',style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}