import 'package:flutter/material.dart';

class VisibleTextAndVOTextAreDiff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Accessibility Actions'),
        ),
        body: VisibleAndVoTextDiff(),
      ),
    );
  }
}

class VisibleAndVoTextDiff extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: [
          SizedBox(height: 150,),
          Semantics(
            child: Text('Readable by VO - Announces as same'),
          ),
          SizedBox(height: 50,),
          Semantics(
            child: Text('Not Readable by VO - Announces as different'),
            label: 'Voice Over not readable',
          ),
        ],
      ),
    );
  }
}