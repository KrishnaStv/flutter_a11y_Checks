import 'package:flutter/material.dart';
import 'package:sample1/Extensions/AppBarExtension.dart';
import 'package:sample1/Extensions/Extensions.dart';

class DescriptiveLabelsSample extends StatelessWidget {

  final String ruleDescription =
      'Labels for form and interactive controls MUST be informative.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: 'Descriptive Labels', enableBack: true)),
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
            Semantics(
              child:
              Container(
                alignment: Alignment.topLeft,
                child: HeaderSemanticWithText('  Good Example'),
              ),
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('A simple example below depicts a complete/meaningful'
                        ' label set for the date of birth field.'),
                    SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('First Name'),
                    ),
                    Semantics(
                      textField:true,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter First Name",
                        ),
                      ),
                    ),

                    SizedBox(height: 25,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Last Name'),
                    ),
                Semantics(
                  textField:true,
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Last Name",
                      ),
                    ),
                ),
                    SizedBox(height: 25,),
                    Text('  Differentiate descriptive labels as per the '
                        'purpose of it. Below is an example of the training '
                        'sessions list subscription option. \n '
                        'We MUST need to differentiate the subscription '
                        'button label as per the session.'),
                    SizedBox(height: 15,),
                    Text('Personality Training'),
                    Semantics(
                      label: 'Subscribe to Personal Training',
                      child: ElevatedButton(child: Text('Subscribe'), onPressed: () {},),
                    ),
                    SizedBox(height: 5,),
                    Text('Self Motivation Training'),
                    Semantics(
                      label: 'Subscribe to Self Motivation Training',
                      child: ElevatedButton(child: Text('Subscribe'), onPressed: () {},),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
            Semantics(
              child:
              Container(
                alignment: Alignment.topLeft,
                child: HeaderSemanticWithText('  Bad Example'),
              ),
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('In the sample below, the visible labels do'
                        ' not define sufficiently the fields and their purpose.'),
                    SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Name'),
                    ),
                    Semantics(
                      textField:true,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "",
                        ),
                      ),
                    ),

                    SizedBox(height: 25,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Name'),
                    ),
                    Semantics(
                      textField:true,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "",
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Text('  Differentiate descriptive labels as'
                        ' per the purpose of it. Below is an example of the'
                        ' training sessions list subscription option.\n '
                        'There are no differentiation foe subscription '
                        'buttons accessibilityLabels.'),
                    SizedBox(height: 15,),
                    Text('Personality Training'),
                    Semantics(
                      label: 'Subscribe',
                      child: ElevatedButton(child: Text('Subscribe'), onPressed: () {},),
                    ),
                    SizedBox(height: 5,),
                    Text('Self Motivation Training'),
                    Semantics(
                      label: 'Subscribe',
                      child: ElevatedButton(child: Text('Subscribe'), onPressed: () {},),
                    ),
                    SizedBox(height: 45,),
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