import 'dart:ffi';
import 'dart:math';

import 'package:sample1/importFiles.dart';

class PaintSampleExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Paint Widget'),
      ),
      body:PaintWidget(),
    );
  }
}

class PaintWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PaintWidgetState();
  }
}

class PaintWidgetState extends State<PaintWidget> {

  late Offset startPoint = Offset(10, 10);
  late Offset endPoint = Offset(220, 220);
  CustomPainter? savedPaint;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: 300,
        height: 300,
        color: Colors.lime,
        child: CustomPaint(
          child: GestureDetector(
            onTap: () { debugPrint('Hello'); },
                    onPanStart: (details) {
                      // debugPrint('start details $details');
                      setState(() {
                        startPoint = details.localPosition;
                      });
                    },
                    onPanUpdate: (details) {
                      // debugPrint('end details $details');
                      setState(() {
                        endPoint = details.localPosition;
                      });
                    },
            onPanEnd: (details) {
              setState(() {
                // savedPaint = DrawLinePainter(startPoint: startPoint, endPoint: endPoint, lineColor: Colors.black, lineWidth: 10);
              });
            },
          ),
          painter: DrawLinePainter(startPoint: startPoint, endPoint: endPoint, lineColor: Colors.black, lineWidth: 10),
          // foregroundPainter: DrawLinePainter(startPoint: startPoint, endPoint: endPoint, lineColor: Colors.black, lineWidth: 10),
        ),
      ),
    );
    // return Center(
    //   child: CustomPaint(
    //     child: Container(
    //       width: 300,
    //       height: 300,
    //       color: Colors.amber,
    //       child: GestureDetector(
    //         onTap: () { debugPrint('Hello'); },
    //         onPanStart: (details) {
    //           // debugPrint('start details $details');
    //           setState(() {
    //             startPoint = details.localPosition;
    //           });
    //         },
    //         onPanUpdate: (details) {
    //           // debugPrint('end details $details');
    //           setState(() {
    //             endPoint = details.localPosition;
    //           });
    //         },
    //
    //         onPanEnd: (details) {
    //
    //         },
    //       ),
    //     ),
    //     size: Size(300,300),
    //     painter: DrawLinePainter(startPoint: startPoint, endPoint: endPoint, lineColor: Colors.lime, lineWidth: 5),
    //     foregroundPainter: DrawLinePainter(startPoint: startPoint, endPoint: endPoint, lineColor: Colors.lime, lineWidth: 5),
    //   ),
    // );
  }
}

class KeyPathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint lineDrawer = Paint()
      ..color = Colors.blue
      ..strokeWidth = 8.0;

    Path path = Path()
// Moves to starting point
      ..moveTo(50, 50)
    //draw lines passing through xc, yc to end at x,y
      ..quadraticBezierTo(77, 370, 50, 750)
      ..quadraticBezierTo(100, 775, 150, 750)
      ..quadraticBezierTo(110, 440, 75, 50);
    //close shape from last point
    path.close();
    canvas.drawPath(path, lineDrawer);

    Path path2 = Path()
// Moves to starting point
      ..moveTo(250, 50)
    //draw lines passing through xc, yc to end at x,y
      ..quadraticBezierTo(280, 350, 270, 675)
      ..quadraticBezierTo(290, 750, 350, 750)
      ..quadraticBezierTo(365, 710, 345, 600)
      ..quadraticBezierTo(320, 450, 270, 50);
    //close shape from last point
    path2.close();
    canvas.drawPath(path2, lineDrawer);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}


class BackgroundDrawLinePainter extends CustomPainter {
  Offset startPoint;
  Offset endPoint;
  Color lineColor = Colors.red;
  double lineWidth = 5.0;

  BackgroundDrawLinePainter({required this.startPoint,
    required this.endPoint,
    required this.lineColor,
    required this.lineWidth});

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    var paint = Paint()
      ..color = lineColor
      ..strokeWidth = lineWidth;
    canvas.drawLine(startPoint, endPoint, paint);
    debugPrint('start details ${startPoint.toString()}');
    debugPrint('end details ${endPoint.toString()}');

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}

class DrawLinePainter extends CustomPainter {
  Offset startPoint;
  Offset endPoint;
  Color lineColor = Colors.red;
  double lineWidth = 5.0;

  DrawLinePainter({required this.startPoint,
    required this.endPoint,
    required this.lineColor,
    required this.lineWidth});

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    var paint = Paint()
      ..color = lineColor
      ..strokeWidth = lineWidth;
    canvas.drawLine(startPoint, endPoint, paint);
    debugPrint('start details ${startPoint.toString()}');
    debugPrint('end details ${endPoint.toString()}');

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = size/2;
    var paint = Paint()
    ..color = Colors.red
    ..strokeWidth = 5;

    var paintarc = Paint()
      ..color = Colors.limeAccent;

    canvas.drawColor(Colors.blueGrey, BlendMode.color);
    canvas.drawCircle(Offset(center.width,center.height), 10, paint);
    canvas.drawLine(Offset(0,0), Offset(center.width,center.height), paint);
    canvas.drawLine(Offset(10,0), Offset(center.width,center.height), paint);
    canvas.drawLine(Offset(200,0), Offset(center.width,center.height), paint);

    // canvas.drawArc(
    // Rect.fromCenter(center: Offset(center.width,center.height),
    //     width: 150, height: 150),
    //     0.4, 2 * pi - 0.8, true, paintarc);

    var pathIs = Path()
    ..moveTo(0, 0)
    ..lineTo(100, 100)
    ..lineTo(0, 100)
    ..lineTo(100, 0);
    // canvas.drawPath(pathIs, paintarc);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
