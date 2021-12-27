import 'package:flutter/material.dart';
import 'package:sample1/RulesList/ImageViewDescriptipons.dart';
import 'package:sample1/RulesList/AnnouncementExample.dart';
import 'package:sample1/RulesList/ColorContrast.dart';
import 'package:sample1/RulesList/AccessibilityActionsExample.dart';
import 'package:sample1/RulesList/InfoTextNotReadable.dart';
import 'package:sample1/RulesList/ProgrammaticLabels.dart';
import 'package:sample1/RulesList/ReadHiddencontent.dart';
import 'package:sample1/RulesList/VisibileTextSRAnnouncement.dart';
import 'package:sample1/RulesList/VisualCues.dart';
import 'package:sample1/Samples/ElementsAccessible.dart';
import 'ReadingOrderExample.dart';
import 'SemanticHeadingExample.dart';
import 'package:sample1/Extensions/SuccessCriterias.dart';

class RulesList extends StatelessWidget {

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
            case SCs.TextAlternative: {
              return new ImageViewDescription();
            }
            case SCs.Announcements: {
              return new AnnouncementMyApp();
            }
            case SCs.ColorContrast: {
              return new Colorconstart();
            }
            case SCs.CustomAccessibilityActions: {
              return new CustomAccessibilityActionsSample();
            }
            case SCs.ElementsAccessible: {
              return new ElementsAccessible();
            }
            case SCs.SwipeReadingOrder: {
              return new ReadingOrderExample();
            }
            case SCs.HeadingTrait: {
              return new SemanticHeadingSample();
            }
            case SCs.StaticTextNotReadable: {
              return new StaticInfoTextNotReadable();
            }
            case SCs.VisibilityWidget: {
              return new ReadHiddenContentSample();
            }
            case SCs.VisibleTextAndVOTextAreDiff: {
              return VisibleTextAndVOTextAreDiff();
            }
            case SCs.ProgrammaticLabelSample: {
              return ProgrammaticLabelSample();
            }
            case SCs.VisualCues: {
              return VisualCues();
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
              child:Text('${ruleSet[index].name}',
                style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}