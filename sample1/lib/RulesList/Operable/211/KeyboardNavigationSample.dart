import 'package:flutter/material.dart';
import 'package:sample1/Extensions/AppBarExtension.dart';
import 'package:sample1/Extensions/Extensions.dart';

class KeyboardNavigationSample extends StatelessWidget {

  final String ruleDescription =
      'All the elements/components on the screen and their functionalities '
      'MUST be available for screen reader users too as for a normal user.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: 'Keyboard Navigation', enableBack: true)),
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
            SizedBox(height: 30,),
            Semantics(
              child:
              HeaderSemanticWithText('Good Example'),
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('For input fields, maintain boundaries to detect the tap area'),
                    SizedBox(height: 15,),
                    Text('Email Id'),
                    SizedBox(height: 5,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Email Id",
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Semantics(
                          child: ElevatedButton(
                            child: const Text("UnSubscribe"),
                            onPressed: () {

                            },
                          ),
                        ),
                        SizedBox(width: 25,),
                        Semantics(
                          child: ElevatedButton(
                            child: const Text("Subscribe"),
                            onPressed: () {

                            },
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
            Semantics(
              child:
              HeaderSemanticWithText('Bad Example'),
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('For input fields, maintain boundaries to detect the tap area'),
                    SizedBox(height: 15,),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Email Id",
                          hintStyle: TextStyle(fontWeight: FontWeight.bold)
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Semantics(
                          child: ElevatedButton(
                            child: const Text("UnSubscribe"),
                            onPressed: () {

                            },
                          ),
                        ),
                        SizedBox(width: 25,),
                        Semantics(
                          child: ElevatedButton(
                            child: const Text("Subscribe"),
                            onPressed: () {

                            },
                          ),
                          excludeSemantics: true,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
