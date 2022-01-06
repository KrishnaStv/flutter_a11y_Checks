import 'package:flutter/material.dart';

class ProgrammaticLabelSample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Programmatic Label Example'),
        ),
        body: ProgrammaticLabelForm(),
      ),
    );
  }
}

class ProgrammaticLabelForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: [
          SizedBox(height: 10,),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          SizedBox(height: 35,),

          Text('Full Name'),
          SizedBox(height: 18,),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Full Name'
            ),
          ),

          SizedBox(height: 35,),

        ],
      ),
    );
  }
}