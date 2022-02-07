import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class KeyboardTrapSample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Keyboard Trap checks'),
      ),
      body: Column(
        children: [
          SizedBox(height: 25,),
          Row(
            children: [
              Expanded(
                child:  Column(
                  children: [
                    Semantics(
                      child: Text("Enter Email Id"),
                    ),
                    Semantics(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Email Id'
                        ),
                      ),
                      excludeSemantics: true,
                    ),
                  ],
                ),
              ),
              Expanded(child:
              Column(
                children: [
                  Semantics(
                    child: Text("Enter Phone number"),
                  ),
                  Semantics(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Phone Number'
                      ),
                    ),
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
    );
  }
}

class DismissableWidgetSample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('Hi');
  }

}