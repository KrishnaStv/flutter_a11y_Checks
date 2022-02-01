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

class PaintWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: CustomPaint(
        size: Size(300,300),
        painter: MyPainter(),
      ),
    );
  }
}

class MyPainter extends CustomPainter { //         <-- CustomPainter class
  @override
  void paint(Canvas canvas, Size size) {
    //                                             <-- Insert your painting code here.
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
