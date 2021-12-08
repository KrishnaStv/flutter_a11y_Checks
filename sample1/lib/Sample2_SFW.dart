import 'package:flutter/material.dart';
import 'package:sample1/SampleScreen.dart';

class Sample2SFW extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SAmple App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SampleAppPage2(),
    );
  }

}


class SampleAppPage2 extends StatefulWidget {

  @override
  SampleAppState createState() => SampleAppState();
}

class SampleAppState extends State<SampleAppPage2> {

  String textToChange = "Hello work";

  void updateText() {
    setState(() {
      textToChange = "New Hello";
    });
  }

  @override
  Widget build(BuildContext context) {

    var assertImagePAth = new AssetImage('assets/images/logo.png');
    var imgObject = new Image(image: assertImagePAth,semanticLabel: 'dequeLogo',fit: BoxFit.cover,);

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample 2"),
      ),
      body: Center(child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Semantics(
            header: true,
            child: ColumNames('H2'),
          ),
          SizedBox(height: 8,),
          Semantics(
            excludeSemantics: true,
            child: imgObject,
          ),
        ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: updateText,
        tooltip: 'Update Text',
        child: Icon(Icons.access_alarm),
      ),
    );
  }
}
