import 'package:flutter/material.dart';
import 'package:sample1/Extensions/AppExtension.dart';

class ValuesSampleExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ValueSampleExampleState();
  }
}

class ValueSampleExampleState extends State<ValuesSampleExample> {

  Image getImageFromPath(String path) {
    var assertImagePAth = new AssetImage(path);
    return new Image(
      image: assertImagePAth,
      fit: BoxFit.cover,
    );
  }

  bool isColorSelectionOpened = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBarExtension(
            navdata: TopBarData(title: 'Values Example', enableBack: true)),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 15,top: 15),
                    alignment: Alignment.topLeft,
                    child: HeaderSemanticWithText('Good Example:'),
                  ),
                  Text('For Selection we have state like expand or collapsed'),
                  SizedBox(height: 15,),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Semantics(
                          button: true,
                          label: 'Available Colors',
                          value: isColorSelectionOpened ? 'Collapsed' : 'Expanded',
                          child: TextButton(onPressed: (){
                            setState(() {
                              isColorSelectionOpened = !isColorSelectionOpened;
                            });
                          }, child: Text('Available colors')),
                        ),
                        Spacer(),
                        Semantics(
                          excludeSemantics: true,
                          child: isColorSelectionOpened ? getImageFromPath('assets/images/up_arrow.png') : getImageFromPath('assets/images/down_arrow.png'),
                        ),
                        SizedBox(width: 25,),
                      ],
                    ),
                  ),
                  isColorSelectionOpened ? Container(
                    padding: EdgeInsets.only(left: 45),
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(onPressed: (){
                          setState(() {
                            isColorSelectionOpened = !isColorSelectionOpened;
                          });
                        }, child: Text('Red')),
                        MaterialButton(onPressed: (){
                          setState(() {
                            isColorSelectionOpened = !isColorSelectionOpened;
                          });
                        }, child: Text('Green')),
                        MaterialButton(onPressed: (){
                          setState(() {
                            isColorSelectionOpened = !isColorSelectionOpened;
                          });
                        }, child: Text('Blue')),
                      ],
                    )
                  ) : new Container(),
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: Text('VoiceOver will announce as \'Available Colors, Collapsed\''),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child:Column(
                      children: [
                        Row(
                          children: [
                            HeaderSemanticWithText('Code Snippet'),
                          ],
                        ),
                        Container(
                          color: Colors.black,
                          child: Text('Code Snippet', style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                  ),
                  Divider(),
                  SizedBox(height: 5,),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    alignment: Alignment.topLeft,
                    child: Text('Button States',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15),),
                  ),
                 Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Normal State'),
                            SizedBox(width: 15,),
                            MaterialButton(onPressed: (){}, child: Text('Call')),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Selected State'),
                            SizedBox(width: 15,),
                            Semantics(
                              selected: true,
                              child: MaterialButton(onPressed: (){},
                                  color: Colors.blueAccent,
                                  textColor: Colors.white,
                                  child: Text('Call')),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Disabled State'),
                            SizedBox(width: 15,),
                            MaterialButton(onPressed: null, child: Text('Call')),
                          ],
                        )
                      ],
                    ),
                  Divider(),
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 15,top: 15),
                    alignment: Alignment.topLeft,
                    child: HeaderSemanticWithText('Bad Example:'),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    child: Text('For Selection we have not assign states properly. Don\'t maintain button states accurately'),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Semantics(
                          button: true,
                          label: 'Available Colors',
                          child: TextButton(onPressed: (){
                            setState(() {
                              isColorSelectionOpened = !isColorSelectionOpened;
                            });
                          }, child: Text('Available colors')),
                        ),
                        Spacer(),
                        Semantics(
                          excludeSemantics: true,
                          child: isColorSelectionOpened ? getImageFromPath('assets/images/up_arrow.png') : getImageFromPath('assets/images/down_arrow.png'),
                        ),
                        SizedBox(width: 25,),
                      ],
                    ),
                  ),
                  isColorSelectionOpened ? Container(
                      padding: EdgeInsets.only(left: 45),
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MaterialButton(onPressed: (){
                            setState(() {
                              isColorSelectionOpened = !isColorSelectionOpened;
                            });
                          }, child: Text('Red')),
                          MaterialButton(onPressed: (){
                            setState(() {
                              isColorSelectionOpened = !isColorSelectionOpened;
                            });
                          }, child: Text('Green')),
                          MaterialButton(onPressed: (){
                            setState(() {
                              isColorSelectionOpened = !isColorSelectionOpened;
                            });
                          }, child: Text('Blue')),
                        ],
                      )
                  ) : new Container(),
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: Text('VoiceOver will announce as \'Available Colors, Collapsed\''),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child:Column(
                      children: [
                        Row(
                          children: [
                            HeaderSemanticWithText('Code Snippet'),
                          ],
                        ),
                        Container(
                          color: Colors.black,
                          child: Text('Code Snippet', style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                  ),
                  Divider(),
                  SizedBox(height: 5,),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    alignment: Alignment.topLeft,
                    child: Text('Button States',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15),),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Selected State'),
                          SizedBox(width: 15,),
                          Semantics(
                            selected: true,
                            child: MaterialButton(onPressed: (){},
                                color: Colors.blueAccent,
                                textColor: Colors.white,
                                child: Text('Call')),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Disabled State'),
                          SizedBox(width: 15,),
                          MaterialButton(onPressed: (){}, child: Text('Call')),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 25,),

                ]
            )
        )
    );
  }
}

