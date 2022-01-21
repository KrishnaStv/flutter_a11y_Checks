import 'package:flutter/material.dart';
import 'package:sample1/Extensions/AppBarExtension.dart';
import 'package:sample1/Extensions/Extensions.dart';

class VisualLabelsSample extends StatelessWidget {

  final String ruleDescription =
      ' Sufficient labels for form field '
      'elements MUST be provided for all'
      ' users (sighted and non-sighted).';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: 'Visible Labels', enableBack: true)),
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
                    Text('The sample below uses'
                        ' an explicitly visible label associated with each form field.\n '
                        'MUST need to add a Visible label for any input data.'),
                    SizedBox(height: 15,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('User Name',style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),),
                    ),
                    TextField(
                      maxLines: 1,
                      minLines: 1,
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(),
                        hintText: "Enter User Name",
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Date of Birth',style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),),
                    ),
                    Row(
                      children: [
                      Text('Date'),
                       Container(
                         height: 50.0,
                         width: 60.0,
                         child: TextField(
                             maxLines: 1,
                             minLines: 1,
                           decoration: InputDecoration(
                             border: OutlineInputBorder(),
                             hintText: ' DD',
                             isDense: true,
                           )
                         ),
                       ),
                        Text('Month'),
                        Container(
                          height: 50.0,
                          width: 60.0,
                          child: TextField(
                              maxLines: 1,
                              minLines: 1,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ' MM',
                                isDense: true,
                              )
                          ),
                        ),
                        Text('Year'),
                        Container(
                          height: 50.0,
                          width: 60.0,
                          child: TextField(
                              maxLines: 1,
                              minLines: 1,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ' YY',
                                isDense: true,
                              )
                          ),
                        ),
                      ],
                    ),
                   SizedBox(height: 20,),
                    Row(
                      children: [
                        Semantics(
                          button: true,
                          label: 'Phone Number',
                          child: IconButton(
                            icon: Image.asset('assets/images/phone-call.png'),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          width: 250.0,
                          child: TextField(
                              maxLines: 1,
                              minLines: 1,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ' Enter Phone Number',
                                isDense: true,
                              )
                          ),
                        ),
                      ],
                    )
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
                    Text('The sample below fails to use an explicitly '
                        'visible label for both group form fields '
                        'and Username fields.'),
                    SizedBox(height: 15,),
                    TextField(
                      maxLines: 1,
                      minLines: 1,
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(),
                        hintText: "Enter User Name",
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        SizedBox(width: 25,),
                        Container(
                          height: 50.0,
                          width: 60.0,
                          child: TextField(
                              maxLines: 1,
                              minLines: 1,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ' DD',
                                isDense: true,
                              )
                          ),
                        ),
                        SizedBox(width: 25,),
                        Container(
                          height: 50.0,
                          width: 60.0,
                          child: TextField(
                              maxLines: 1,
                              minLines: 1,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ' MM',
                                isDense: true,
                              )
                          ),
                        ),
                        SizedBox(width: 25,),
                        Container(
                          height: 50.0,
                          width: 60.0,
                          child: TextField(
                              maxLines: 1,
                              minLines: 1,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ' YY',
                                isDense: true,
                              )
                          ),
                        ),
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