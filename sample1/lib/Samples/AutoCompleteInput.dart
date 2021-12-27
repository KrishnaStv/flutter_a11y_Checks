import 'package:flutter/material.dart';

class AutocompleteExampleApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AutoComplete Input'),
        ),
        body: Center(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              AutoCompleteExample1(),
            ],
          ),
        ),
      ),
    );
  }
}

class AutoCompleteExample1 extends StatelessWidget {

  static const List<String> _Options = <String>[
    'dog',
    'cat',
    'parrot'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Autocomplete(
      optionsBuilder: (TextEditingValue textEditValue) {
      if(textEditValue.text == '') {
        return const Iterable<String>.empty();
      }
      return _Options.where((String option) {
        return option.contains(textEditValue.text.toLowerCase());
      });
    },
      onSelected: (String selection) {
      debugPrint('selected $selection');
      },
    );
  }

}