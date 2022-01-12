import 'package:flutter/material.dart';
import 'package:sample1/Extensions/Extensions.dart';
import 'package:sample1/Extensions/AppBarExtension.dart';

class HomeScreen extends StatelessWidget {

  static const IconData arrow_right = IconData(0xe09e, fontFamily: 'MaterialIcons', matchTextDirection: true);

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
        ListTile(title:  Text('Perceivable'),trailing: Icon(arrow_right),),
        ListTile(title:  Text('Perceivable'),trailing: Icon(Icons.access_alarm),),
        ListTile(title:  Text('Perceivable'),trailing: Icon(Icons.access_alarm),),
        ListTile(title:  Text('Perceivable'),trailing: Icon(Icons.access_alarm),),
      ],
    )
    );
  }
}