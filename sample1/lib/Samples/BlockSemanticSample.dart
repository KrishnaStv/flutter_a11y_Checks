import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BlockSemanticsSample extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new BlockSemanticsSampleState();
  }
}

class BlockSemanticsSampleState extends State<BlockSemanticsSample> {

  bool blockWidget = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Block Semantics'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: const Text('Button 1')),
          const SizedBox(
            height: 15,
          ),
         Semantics(
           child:  const TextField(
             decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 hintText: 'Enter name'
             ),
           ),
           onMoveCursorBackwardByCharacter: (istrue) {
             print('move cursor backward');
           },
           onMoveCursorForwardByCharacter: (istrue) {
              print('move cursor forward');
         },
           onPaste: () {
             print('Text pasted');
           },
         ),
          const SizedBox(
            height: 15,
          ),
          const Text('Just a text widget'),
          const SizedBox(
            height: 15,
          ),
          BlockSemantics(
            blocking: blockWidget,
            child: Container(
              width: 300,
              height: 300,
              color: Colors.amber,
              child: Center(
                child: Text('Hello.....', style: TextStyle(fontWeight: FontWeight.w500),),
              ),
            ),
          ),
          Semantics.fromProperties(
              properties: SemanticsProperties(
                button: true,
                onTap: () { print('Property tap'); }
              ),
            child: OutlinedButton(
              child: Text('Ouline button'),
              onPressed: () { print('outline button click'); },
            ),
          ),
          Semantics(
            explicitChildNodes: true,
            onScrollDown: () {
              print('Scrolling down');
            },
            onScrollLeft: () {
              print('Scrolling left');
            },
            onScrollRight: () {
              print('Scrolling right');
            },
            onScrollUp: () {
              print('Scrolling up');
            },
            onSetText: (textis) {
              print('value is $textis');
            },
            child: Column(
              children: [
                OutlinedButton(
                  child: Text('Ouline button'),
                  onPressed: () { print('outline button click'); },
                ),
                OutlinedButton(
                  child: Text('Ouline button'),
                  onPressed: () { print('outline button click'); },
                ),
                OutlinedButton(
                  child: Text('Ouline button'),
                  onPressed: () { print('outline button click'); },
                ),
                OutlinedButton(
                  child: Text('Ouline button'),
                  onPressed: () { print('outline button click'); },
                ),
                OutlinedButton(
                  child: Text('Ouline button'),
                  onPressed: () { print('outline button click'); },
                ),
                OutlinedButton(
                  child: Text('Ouline button'),
                  onPressed: () { print('outline button click'); },
                ),
              ],
            ),
          ),
          Semantics(
            onDidGainAccessibilityFocus: () {
              print('got a11y focus');
            },
            onDidLoseAccessibilityFocus: () {
              print('lose a11y focus');
            },
            child: OutlinedButton(
              child: Text('focus button'),
              onPressed: () { 
                // MediaQuery.of(context).accessibleNavigation = true; using this property we will know user is accessing app by assistive technology. So we can disable timers and animations.
                print('focus button clicked');
                },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         setState(() {
           blockWidget = !blockWidget;
         });
        },
        child: Text('Click'),
      ),
    );
  }

}