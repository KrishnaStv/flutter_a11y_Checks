import 'package:flutter/material.dart';

class PageControllerExample extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Page Controller'),
          ),
          body: PageControllerSample(),
        ),
      ),
    );
  }
}

class PageControllerSample extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageControllerState();
  }
}

class PageControllerState extends State<PageControllerSample> {
  final PageController _pageControl = PageController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      children: [
        Container(
          color: Colors.blueGrey,
          child: Center(
            child: MaterialButton(
              child: Text('Page 1') ,
              onPressed: () {
                if (_pageControl.hasClients) {
                  _pageControl.animateToPage(1,
                      duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
                }
              },
            ),
          ),
        ),
        Container(
          color: Colors.green,
          child: Center(
            child: MaterialButton(
              child: Text('Page 0') ,
              onPressed: () {
                if (_pageControl.hasClients) {
                  _pageControl.animateToPage(0,
                      duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}