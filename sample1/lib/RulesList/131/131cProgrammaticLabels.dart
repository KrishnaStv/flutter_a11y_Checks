import 'package:flutter/material.dart';
import 'package:sample1/Extensions/AppBarExtension.dart';
import 'package:sample1/Extensions/Extensions.dart';

class ProgrammaticLabelSample extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ProgrammaticLabelState();
  }

}

class ProgrammaticLabelState extends State<ProgrammaticLabelSample> {
  final String ruleDescription =
      'Labels MUST be programmatically associated with form '
      'input elements using Semantics label attribute.';

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: 'Programmatic Label', enableBack: true)),
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
            ),Container(
              child:Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText('Code Snippet'),
                    ],
                  ),
                  Text(
                      'Semantic Label : \n '
                          'Semantics('
                          'child: widgetObject,'
                          ' label: \'I accept Terms and Conditions\',) \n\n'
                         ),
                ],
              ),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
            ),
            Container(
              child: Column (
                children: [
                  Row(
                    children: [
                    Semantics(
                      child:  Text('Email Id',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      header: true,
                    )
                    ],
                  ),
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
                ],
              ),
              padding: EdgeInsets.only(left: 10, right: 10),
            ),

            SizedBox(
              height: 35,
            ),
            Semantics(
              child:  Row(
                children: [
                  Checkbox(value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = isChecked ? false : true;
                        });
                      }),
                  Text('I accept Terms and Conditions'),
                ],
              ),
              button: true,
              value: isChecked ? 'Selected' : 'Not selected',
            ),

          ],
        ),
      ),
    );
  }
}
