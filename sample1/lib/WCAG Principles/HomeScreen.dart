import 'package:flutter/material.dart';
import 'package:sample1/Extensions/AppExtension.dart';
import 'package:sample1/WCAG%20Principles/PerceivableRulesList.dart';
import 'package:sample1/WCAG Principles/OperableRulesList.dart';
import 'package:sample1/WCAG%20Principles/RobustRulesList.dart';
import 'package:sample1/WCAG%20Principles/UnderstandableRulesList.dart';
import 'package:sample1/RulesList/Perceivable/PerceivableExtensionofSC.dart';

const IconData arrow_right = IconData(0xe09e,
    fontFamily: 'MaterialIcons',
    matchTextDirection: true);

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: new AppBarExtension(
        navdata: TopBarData(
        title: 'WCAG 2.1 GUIDELINES', enableBack: false)),
    body: ListView(
      padding: EdgeInsets.all(8),
      children: [
        PerceivableWidget(),
        OperableWidget(),
        UnderstandableWidget(),
        RobustWidget(),
      ],
    )
    );
  }
}

class PerceivableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Semantics(
      button: true,
      child: ListTile(
          title:  Text('Perceivable'),
          trailing:Semantics(
            excludeSemantics: true,
            child: GlobalImages
                .sharedInstance()
                .rightArrow,
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PerceivableRulesList();
            })
            );
          }
      ),
    );
  }
}

class OperableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Semantics(
      child: ListTile(
          title:  Text('Operable'),
          trailing:Semantics(
            excludeSemantics: true,
            child: GlobalImages
                .sharedInstance()
                .rightArrow,
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return OperableRulesList();
            })
            );
          }
      ),
      button: true,
    );
  }
}

class UnderstandableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Semantics(child: ListTile(
        title:  Text('Understandable'),
        trailing:Semantics(
          excludeSemantics: true,
          child: GlobalImages
              .sharedInstance()
              .rightArrow,
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return UnderstandableRulesList();
          })
          );
        }
    ),
      button: true,
    );
  }
}

class RobustWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Semantics(
      child: ListTile(
          title:  Text('Robust'),
          trailing: Semantics(
            excludeSemantics: true,
            child: GlobalImages
                .sharedInstance()
                .rightArrow,
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return RobustRulesList();
            })
            );
          }
      ),
      button: true,
    );
  }
}