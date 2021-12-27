import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldfocusExample extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TextFieldState();
  }

}

class TextFieldState extends State<TextFieldfocusExample> {
  late FocusNode nameNode;
  late FocusNode emailNode;
  late FocusNode modelButtonNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameNode = FocusNode();
    emailNode = FocusNode();
    modelButtonNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('TextField Focus Checks'),
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Expanded(child:
                  Column(
                    children: [
                      Text('Name'),
                      SizedBox(height: 25,),
                      TextField(
                        focusNode: nameNode,
                      ),
                    ],
                  ),
                  ),
                  Expanded(child:
                  Column(
                    children: [
                      Text('Email'),
                      SizedBox(height: 25,),
                      TextField(
                        focusNode: emailNode,
                      ),
                    ],
                  ) ,
                  ),
                ],
              ),
              SizedBox(height: 35,),
              Row(
                children: [
                  CupertinoButton(child: Text('Name Focus'), onPressed: () {
                    FocusScope.of(context).requestFocus(nameNode);
                  }),

                  CupertinoButton(child: Text('Email Focus'), onPressed: () {
                    FocusScope.of(context).requestFocus(emailNode);
                  }),
                ],
              ),
              SizedBox(height: 35,),
              ElevatedButton(onPressed: () {

              },
                child: Text('Show Mode'),
              focusNode: modelButtonNode,
              ),
            ],
          ),
        ),
      ),
    );
  }
}