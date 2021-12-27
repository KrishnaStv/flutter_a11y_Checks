import 'package:flutter/material.dart';

class TraversalSample1 extends StatelessWidget {

  final data1 = ExampleData(counter: 1,text: 'String one');

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Traversal Example 1'),
          ),
          body: FocusTraversalGroup(
            policy: OrderedTraversalPolicy(),
            descendantsAreFocusable: false,
            child: Row(
              children: [
                Column(
                  children: [
                    NumberWidgetSample(data:ExampleData(counter: 1, text: 'String one')),
                    NumberWidgetSample(data:ExampleData(counter: 2, text: 'String Two')),
                  ],
                ),
                Column(
                  children: [
                    NumberWidgetSample(data:ExampleData(counter: 3, text: 'String Three')),
                    NumberWidgetSample(data:ExampleData(counter: 4, text: 'String Four')),
                  ],
                ),
              ],
            ),
        ),
      ),
      ),
    );
  }
}

class ExampleData {
  String text = 'ABC';
  double counter = 0;
  ExampleData({required this.text, required this.counter});
}

class NumberWidgetSample extends StatelessWidget {

  final ExampleData data;
  NumberWidgetSample({required this.data});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FocusTraversalOrder(order: NumericFocusOrder(data.counter), child: Text(data.text));
  }
}