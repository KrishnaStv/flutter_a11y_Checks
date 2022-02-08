import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class  KeyboardTrapSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new KeyboardTrapSampleState();
  }
}

class KeyboardTrapSampleState extends State<KeyboardTrapSample> {


  @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Keyboard Trap checks'),
  //     ),
  //     body: Column(
  //       children: [
  //         SizedBox(height: 25,),
  //         Row(
  //           children: [
  //             Expanded(
  //               child:  Column(
  //                 children: [
  //                   Semantics(
  //                     child: Text("Enter Email Id"),
  //                   ),
  //                   Semantics(
  //                     child: TextField(
  //                       decoration: InputDecoration(
  //                           hintText: 'Email Id'
  //                       ),
  //                     ),
  //                     excludeSemantics: true,
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             Expanded(child:
  //             Column(
  //               children: [
  //                 Semantics(
  //                   child: Text("Enter Phone number"),
  //                 ),
  //                 Semantics(
  //                   child: TextField(
  //                     decoration: InputDecoration(
  //                         hintText: 'Phone Number'
  //                     ),
  //                   ),
  //                 ) ,
  //               ],
  //             ),
  //             ),
  //           ],
  //         ),
  //         SizedBox(height: 25,),
  //         Semantics(
  //           child: ElevatedButton(onPressed: () {
  //             debugPrint('Submit Clicked');
  //           }, child: Text('Submit')),
  //           sortKey: OrdinalSortKey(5),
  //         ),
  //         Container(
  //           width: 300,
  //           height: 300,
  //           color: Colors.blueGrey,
  //           child: GestureDetector(
  //             onTapDown: (details) {
  //
  //             },
  //             child: Stack(
  //               fit: StackFit.expand,
  //               children: [
  //                 Container(color:  Colors.amber,),
  //                 Positioned(child: Text('Hello'),left:posx, right: posy,),
  //               ],
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  var isPoint1Taped = false;
  var isPoint2Taped = false;
  var isPoint3Taped = false;

  @override
  Widget build(BuildContext context) {

    double posx = MediaQuery.of(context).size.width/2 - 25;
    double posy = 100.0;

    double pos2x = MediaQuery.of(context).size.width/2 - 125;
    double pos2y = 295.0;

    double pos3x = MediaQuery.of(context).size.width/2 + 125;
    double pos3y = 295.0;
    
    return GestureDetector(
      onPanStart: (details) {
        if(details.globalPosition.dx > posx-10 && details.globalPosition.dx <  posx+40) {
          print('touches position may be posx1');
          setState(() {
            isPoint1Taped = true;
          });
        }
        if(details.globalPosition.dx > pos2x-10 && details.globalPosition.dx <  pos2x+40) {
          print('touches position may be posx2');
          setState(() {
            isPoint2Taped = true;
          });
        }
        if(details.globalPosition.dx > pos3x-10 && details.globalPosition.dx <  pos3x+40) {
          print('touches position may be posx3');
          setState(() {
            isPoint3Taped = true;
          });
        }
      },
      child: Stack(fit: StackFit.expand, children: <Widget>[
        // Hack to expand stack to fill all the space. There must be a better
        // way to do it.
        Container(color: Colors.white),
        Positioned(
          child: Container(
            alignment: Alignment.center,
            width: 35,
            height: 35,
            color: isPoint1Taped ? Colors.green : Colors.blueGrey,
            child: Text('1'),
          ),
          left: posx,
          top: posy,
        ),
         Positioned(
          child: Container(
            alignment: Alignment.center,
            width: 35,
            height: 35,
            color: isPoint2Taped ? Colors.green : Colors.blueGrey,
            child: Text('2'),
          ),
          left: pos2x,
          top: pos2y,
        ),
        Positioned(
          child: Container(
            alignment: Alignment.center,
            width: 35,
            height: 35,
            color: isPoint3Taped ? Colors.green : Colors.blueGrey,
            child: Text('3'),
          ),
          left: pos3x,
          top: pos3y,
        ),
      ]),
    );
  }

  void onTapDown(BuildContext context, TapDownDetails details) {
    print('${details.globalPosition}');
    final RenderBox box = context.findRenderObject() as RenderBox;
    final Offset localOffset = box.globalToLocal(details.localPosition);
    if(details.globalPosition.dx > 110 && details.globalPosition.dx < 180) {
      print('touches position may be 80-120');
    }
    // setState(() {
    //   posx = localOffset.dx;
    //   posy = localOffset.dy;
    // });
  }

}

class DismissableWidgetSample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('Hi');
  }

}