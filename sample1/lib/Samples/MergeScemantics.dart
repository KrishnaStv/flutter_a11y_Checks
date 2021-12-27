import 'package:flutter/material.dart';

class MergeSemanticsSample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Merge Semantics'),
          ),
          body: ListView.builder(
              itemCount: 5,
              addSemanticIndexes: false,
              semanticChildCount: 3,
              itemBuilder: (context,position){
                return MergeSemantics(
                  child: Semantics(label: 'Container with size 200 and red background',
                    enabled: position == 1 ? true : false,
                    selected: position == 0 ? true : false,
                    child: Container(color: Colors.red, height: 200, width: 200,
                      child: Column(
                        children: [
                          Text('First container text is item $position'),
                          BlockSemantics(child:Text('Second container text is item $position')),
                          ExcludeSemantics(child:Text('Third container text is item $position')),
                          Text('Fourth container text is item $position'),
                          Text('Fifth container text is item $position'),
                        ],),),),);
              }
          ),
        ),
      ),
    );
  }
}