import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
                          Semantics(
                            child: Text("Enter Email Id"),
                            sortKey: OrdinalSortKey(1),
                          ),
                          Semantics(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Email Id'
                              ),
                            ),
                            sortKey: OrdinalSortKey(2),
                          ),
                        ],
                      ),
                  ),
                 Expanded(child:
                 Column(
                   children: [
                     Semantics(
                       child: Text("Enter Phone number"),
                       sortKey: OrdinalSortKey(3),
                     ),
                     Semantics(
                       child: TextField(
                         decoration: InputDecoration(
                             hintText: 'Phone Number'
                         ),
                       ),
                       sortKey: OrdinalSortKey(4),
                     ) ,
                   ],
                  ),
                 ),
                ],
              ),
              SizedBox(height: 25,),
              Semantics(
                child: ElevatedButton(onPressed: () {
                  debugPrint('Submit Clicked');
                }, child: Text('Submit')),
                sortKey: OrdinalSortKey(5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

