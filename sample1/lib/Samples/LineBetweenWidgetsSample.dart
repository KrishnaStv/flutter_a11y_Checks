import 'package:flutter/material.dart';

class Boxes extends StatelessWidget {

  @override
  build(_) => Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: Text('Lines Drawing'),
    ),
    body: GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 25,
      crossAxisSpacing: 25,
      padding: const EdgeInsets.all(25),
      children: <Widget>[
        for (int i = 0; i < 6; i++)
          Container(
            color: const Color(0xffe4f2fd),
            foregroundDecoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffc2d2e1),
                  width: 2,
                )),
            child: const Center(
              child: Text('MyBox'),
            ),
          )
      ],
    ),
  );

}

class Lines extends StatefulWidget {

  @override
  createState() => _LinesState();
}

class _LinesState extends State<Lines> {
  Offset? start;
  Offset? end;

  @override
  build(_) => GestureDetector(
    onTap: () => print('t'),
    onPanStart: (details) {
      print(details.localPosition);
      setState(() {
        start = details.localPosition;
        end = null;
      });
    },
    onPanUpdate: (details) {
      setState(() {
        end = details.localPosition;
      });
    },
    child: CustomPaint(
      size: Size.infinite,
      painter: LinesPainter(start, end),
    ),
  );
}

class LinesPainter extends CustomPainter {
  final Offset? start, end;

  LinesPainter(this.start, this.end);

  @override
  void paint(Canvas canvas, Size size) {
    if (start == null || end == null) return;
    canvas.drawLine(
        start!,
        end!,
        Paint()
          ..strokeWidth = 4
          ..color = Colors.redAccent);
  }

  @override
  bool shouldRepaint(LinesPainter oldDelegate) {
    return oldDelegate.start != start || oldDelegate.end != end;
  }
}