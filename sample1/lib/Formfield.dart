import 'package:flutter/material.dart';

class FormFieldApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Form Field input'),
          ),
          body: FormfieldData(),
        ),
      ),
    );
  }
}

class FormfieldData extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FromfieldDataState();
  }
}

class FromfieldDataState extends State<FormfieldData> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Semantics(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    labelText: 'Please enter Your Email id',
                    hintText: 'Please Enter Your Email'
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter valid input';
                  } else {
                    debugPrint('Value is $value');
                  }
                },
              ),
            ),
            Semantics(
              label: 'Enter Password',
              textField: true,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password'
                ),

              ),
            )
            ,
            Padding(
                padding:const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton (
                onPressed: () {
                  debugPrint('Clicked');
                  if(_formKey.currentState!.validate()) {

                  }
                },
                child: Text('Submit'),
              ),

            ),
          ],
        )
    );
  }
}