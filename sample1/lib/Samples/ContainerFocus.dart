import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerFocusSample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('container Example'),
          ),
          body: CupertinoButton(
            child: Text('Show Model Container'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ModelContainerSample()));
            },
          ),
        ),
      ),
    );
  }
}

class ModelContainerSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Semantics(
      container: true,
      child: Container(
        height: 100,
        width: 100,
        color: Colors.yellow,
        padding: EdgeInsets.all(10),
        child: Text('Title Text should be'),
      ),
    );
  }
}


class ContainerSplitSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Contianer Split'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.55,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  child: MaterialApp(
                      debugShowCheckedModeBanner: false,
                      theme: ThemeData(
                        primaryColor: Color.fromRGBO(86, 86, 86, 1.00),
                      ),
                      initialRoute: '/W1',
                      routes: {
                        '/W1': (context) => WidgetOne(),
                        '/W2': (context) => WidgetTwo(),
                      })),
            ],
          ),
        ),
      ),
    );
  }
}

class WidgetOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/W2');
        },
        child: Column(
          children: [Text('Hello'),
          SizedBox(height: 25,),
          Text("Hello 111"),
          ],
        )
    );
  }
}


class WidgetTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/W1');
        },
        child: Container(color: Colors.pink));
  }
}
