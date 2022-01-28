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

  var geCs1 = '\n Semantics( \n child: \n buttonWidget, \n button:true, \n label:\' Available Colors\',value: isColorSelectionOpened ? \'Collapsed\' : \'Expanded\', \n) \n';
  var geCS2 = '\n for normal button state - button \n title will read as semantics label \n attribute. For selected state update the \n semantics selection. For disabled state \n assign null to action block \n '
      '// Selected state \n Semantics ( \n child : \n buttonWidget, \n selected : true) \n '
      '//Disabled state \n MaterialButton(onPressed: null, \n child: Text(\'Call\') \n ) \n';

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
                  CodeSinppetWidget(codeSnippet: geCs1),
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
                  CodeSinppetWidget(codeSnippet: geCS2),
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

