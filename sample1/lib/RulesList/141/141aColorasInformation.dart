import 'package:flutter/material.dart';
import 'package:sample1/Extensions/AppBarExtension.dart';
import 'package:sample1/Extensions/Extensions.dart';

class ColorasInfoSample extends StatelessWidget {

  final String ruleDescription =
      'Information/instruction is presented to the user in a way that not just requires the'
      ' ability to see, and there MUST be an alternate method to convey the information.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: 'Visual Cues', enableBack: true)),
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
            HeaderSemanticWithText('Good Example'),
            Container(
              height: 45,
              width: 130,
              color: Colors.red,
              child:
              MaterialButton(onPressed: () {

              }, child: Text('STOP',
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 21),
              )
              ),
            ),
            SizedBox(height: 45,),
            Semantics(
              child: Text('BAD Example', style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
            ),
            Container(
              height: 45,
              width: 130,
              color: Colors.red,
              child:
              MaterialButton(onPressed: () {

              }, child: Text('',
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 21),
              )
              ),
            ),
          ],
        ),
      ),
    );
  }
}