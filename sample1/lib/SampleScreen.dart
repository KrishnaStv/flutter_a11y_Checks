import 'package:flutter/material.dart';

class SampleScreen extends StatelessWidget {

  @override
  Widget build(BuildContext content) {
    return MaterialApp(
      title: "Sample App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title Bar"),
        ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children:[
            ColumNames('H1'),SizedBox(height: 8.0),
            ColumNames('H2'),SizedBox(height: 8.0),
            ColumNames('H3'),SizedBox(height: 8.0),
            ColumNames('H4'),SizedBox(height: 8.0),
            TextButton(onPressed: null, child: Text('Enabled')),
            Stack(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 90,
                  height: 90,
                  color: Colors.green,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.blue,
                ),
              ],
            ),
          ],
    ),
        ),
      ),
    );
  }
  // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Sample App',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     home: SampleAppPage(),
  //   );
  // }
}


class ColumNames extends StatelessWidget {
  final String name;

  const ColumNames(this.name);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.red),
      child:Padding(
        padding: const EdgeInsets.all(8),
        child:Text(name) ,
      ),
    );
  }
}
class SampleAppPage extends StatefulWidget {
  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  // Default placeholder text
  String textToShow = "I Like Flutter";
  void _updateText() {
    setState(() {
      // update the text
      textToShow = "Flutter is Awesome!";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: Center(child: Text(textToShow)),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateText,
        tooltip: 'Update Text',
        child: Icon(Icons.update),
      ),
    );
  }
}