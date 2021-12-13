import 'package:flutter/material.dart';

class ElementsAccessible extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Elements Accessible'),
          ),
          body: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 50,height: 50,),
                    Semantics(
                      child: Text('is Accessible label'),
                    ),
                    SizedBox(width: 50,),
                    Semantics(
                      child: Text('is Not Accessible label'),
                      excludeSemantics: true,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}