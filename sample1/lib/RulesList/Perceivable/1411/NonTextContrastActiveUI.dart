import 'package:flutter/material.dart';
import 'package:sample1/Extensions/AppBarExtension.dart';
import 'package:sample1/Extensions/Extensions.dart';

class NonTextContrastActiveUI extends StatelessWidget {

  final String ruleDescription =
      'Any visual boundary that indicates an active user component\'s hit area'
      ' (the region where a pointer can activate the control) must have sufficient '
      'contrast of 3 to 1 with the adjacent background. Exceptions exist.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: 'Non-Text Contrast - Active \n User Interface Components', enableBack: true)),
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
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email id',
                          hintText: 'Please enter your Email'
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter valid input';
                        } else {
                          debugPrint('Value is $value');
                        }
                      },
                    ),
                    SizedBox(height: 15,),
                    Text('For any input action buttons, maintain boundaries to detect the tap area'),
                    Row(
                      children: [
                        Checkbox(value: false,
                            side: const BorderSide(
                              // set border color here
                              width: 2,
                              color: Colors.blue,
                            ),
                            onChanged: (bool? value)  {
                        }),
                        Text('I Accept Terms and Conditions')
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
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Email id',
                          hintText: 'Please enter your Email'
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter valid input';
                        } else {
                          debugPrint('Value is $value');
                        }
                      },
                    ),
                    SizedBox(height: 15,),
                    Text('For any input action buttons, maintain boundaries to detect the tap area'),
                    Row(
                      children: [
                        Checkbox(value: false,
                            side: const BorderSide(
                              // set border color here
                              width: 2,
                              color: Colors.black12,
                            ),
                            onChanged: (bool? value)  {
                            }),
                        Text('I Accept Terms and Conditions')
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
