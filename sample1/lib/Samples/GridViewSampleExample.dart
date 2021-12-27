import 'package:flutter/material.dart';

class GridViewSampleExample extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid View Example'),
        ),
        body: customScrollViewFloatingAppBar(),
      ),
    );
  }
}

class customScrollViewFloatingAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          title: Text('Floating App Bar'),
          floating: true,
          flexibleSpace: Placeholder(),
          expandedHeight: 200,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text('Item #$index'),),
            childCount: 100,
          ),
        ),
      ],
    );
  }


}


class GridViewExample1 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
        crossAxisCount: 5,
      children:
        List.generate(100, (index) {
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline6,
            ),
          );
        }),

    );
  }
  
}