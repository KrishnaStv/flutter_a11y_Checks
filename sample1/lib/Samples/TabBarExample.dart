import 'package:flutter/material.dart';

class TabbarExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: DefaultTabController(
          length: 3,
          child : Scaffold (
        appBar: AppBar(
        title: Text('Tabbar Example'),
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.directions_car),),
            Tab(icon: Icon(Icons.directions_transit),),
            Tab(icon: Icon(Icons.directions_bike),),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          Icon(Icons.directions_car),
          Icon(Icons.directions_transit),
          Icon(Icons.directions_bike),
        ],
      ),
    ),
    ),
      ),
    );
  }
}