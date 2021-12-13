import 'package:flutter/material.dart';
import 'package:sample1/ImageViewDescriptipons.dart';

class RulesList extends StatelessWidget {

  final List<String> ruleSet = <String>["Text Alternative", "Time Based Media", "Adaptable"];

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
          return new ImageViewDescription();
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