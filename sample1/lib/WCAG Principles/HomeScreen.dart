import 'package:flutter/material.dart';
import 'package:sample1/Extensions/Extensions.dart';
import 'package:sample1/Extensions/AppBarExtension.dart';
import 'package:sample1/WCAG%20Principles/PerceivableRulesList.dart';

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
        ListTile(
          title: Text('Perceivable'),
          trailing: Icon(arrow_right),
          onTap: () {

        },),
        ListTile(
          title:  Text('Perceivable'),
          trailing: Icon(Icons.access_alarm),
            onTap: () {

            }
        ),
        ListTile(
          title:  Text('Perceivable'),
          trailing: Icon(Icons.access_alarm),
            onTap: () {

            }
        ),
        ListTile(
          title:  Text('Perceivable'),
          trailing: Icon(Icons.access_alarm),
            onTap: () {

        }
        ),
        PerceivableWidget(),
      ],
    )
    );
  }
}

class PerceivableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
        title:  Text('Perceivable'),
        trailing:Icon(arrow_right),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return PerceivableRulesList();
          })
          );
        }
    );
  }

}