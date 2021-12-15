import 'package:flutter/material.dart';

class ReadingOrderExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Reading Order'),
          ),
          body:Column(
            children: [
              SizedBox(height: 25,),
              Row(
                children: [
                  Expanded(
                      child:  Column(
                        children: [
                          Text("Enter Email Id"),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Email Id'
                            ),
                          ),
                        ],
                      ),
                  ),
                 Expanded(child:
                 Column(
                   children: [
                     Text("Enter Phone number"),
                     TextField(
                       decoration: InputDecoration(
                           hintText: 'Phone Number'
                       ),
                     ),
                   ],
                  ),
                 ),
                ],
              ),
              SizedBox(height: 25,),
              ElevatedButton(onPressed: () {
                debugPrint('Submit Clicked');
              }, child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}

