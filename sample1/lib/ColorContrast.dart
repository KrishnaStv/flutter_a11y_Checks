import 'package:flutter/material.dart';

class Colorconstart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Color Constart'),
          ),
          body: Center(
            child: Column(
              children: [
                SizedBox(height: 25,),
                Text('Check Text color with background',style: TextStyle(
                  backgroundColor: Colors.red,
                  color: Colors.yellow
                ),
                ),
                SizedBox(height: 25,),
                Text('Check good Text color with background',style: TextStyle(
                    backgroundColor: Colors.white,
                    color: Colors.black
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}