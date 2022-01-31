import 'package:flutter/material.dart';
import 'package:sample1/importFiles.dart';

class GridViewSampleExample extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid View Example'),
        ),
        body: HorizantalListSampleExample(),
      ),
    );
  }
}

class HorizantalListSampleExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HorizantalListSampleState();
  }
}

class HorizantalListSampleState extends State<HorizantalListSampleExample> {

  ScrollController _scrollController = new ScrollController();

  // Define the fixed height for an item

  @override
  Widget build(BuildContext context) {

    final double _width = MediaQuery.of(context).size.width;


    // TODO: implement build
    return ListView(
      controller: _scrollController,
      // This next line does the trick.
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: MaterialButton(onPressed: (){
            _scrollController.animateTo(_width * 2,
                duration: const Duration(microseconds: 500), curve: Curves.easeIn);
            // _scrollController.animateTo(_scrollController.position.maxScrollExtent, duration: Duration(milliseconds: 5), curve: Curves.easeIn);
          },child: Text('Next Index'),),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.blue,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.green,
        ),
        Container(
          width:MediaQuery.of(context).size.width,
          color: Colors.yellow,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.orange,
        ),
      ],
    );

  }
}

class MultiplerowsSampleExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Semantics(
                header: true,
                child: Text('Company'
                  , style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Semantics(
                header: true,
                child: Text('Jun 2018'
                  , style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Semantics(
                header: true,
                child: Text('Jun 2019'
                  , style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Semantics(
                label: 'Company: ',
                child: Text('Maruthi'),
              ),
              Semantics(
                label: 'June 2018 cost:',
                child: Text('1.34L'),
              ),
              Semantics(
                label: 'June 2019 cost',
                child: Text('1.10L'),
              ),
            ],
          ),
          MergeSemantics(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Semantics(
                  label: 'Company: ',
                  child: Text('Hundai'),
                ),
                Semantics(
                  label: 'June 2018 cost:',
                  child: Text('0.45L'),
                ),
                Semantics(
                  label: 'June 2019 cost:',
                  child: Text('0.42L'),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Semantics(
                label: 'Company: ',
                child: Text('Hundai'),
              ),
              Semantics(
                label: 'June 2018 cost:',
                child: Text('0.45L'),
              ),
              Semantics(
                label: 'June 2019 cost:',
                child: Text('0.42L'),
              ),
            ],
          )
        ],
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