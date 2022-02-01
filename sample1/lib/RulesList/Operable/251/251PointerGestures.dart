import 'package:sample1/importFiles.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PointerGesturesSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PointerGesturesSampleState();
  }
}

class PointerGesturesSampleState extends State<PointerGesturesSample> {
  final String ruleDescription =
      'All functionality that can be operated with a '
      'pointer can be operated with single-pointer actions.'
      ' Path-based or multi-point gestures are not required '
      'to operate any functionality. Exceptions exist.';
  CameraPosition _initialPosition = CameraPosition(target: LatLng(0.0,0.0));
  late GoogleMapController _mapController;
  var currentVolume = 4;

  Future<dynamic> buildShowDialog(BuildContext alertContext, String content) {
    return showDialog(
        context: alertContext,
        builder: (BuildContext dragContext) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text(content),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(dragContext).pop();
                  },
                  child: Text('Okay'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(
              title: SCs.PointerGestures.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.PointerGestures.name),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: HeaderSemanticWithText('Good Example'),
                  ),
                  Text('Multipoint gesture: Below Map view contains separate '
                      'user actions for  Zoom in  & Zoom Out apart from'
                      ' pinch gesture.'),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 300,
              height: 400,
              child:  Stack(
                children: [
                  Semantics(
                    child: GoogleMap(initialCameraPosition: _initialPosition,
                      myLocationEnabled: true,
                      myLocationButtonEnabled: true,
                      mapType: MapType.normal,
                      zoomGesturesEnabled: true,
                      zoomControlsEnabled: true,
                      onMapCreated: (GoogleMapController controller) {
                        _mapController = controller;
                      },),
                    label: 'Good Example MapView',
                  ),
                  SafeArea(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                              child: Material(
                                color: Colors.black,
                                child: Semantics(
                                  child: InkWell(
                                    splashColor: Colors.black,
                                    child: SizedBox(
                                      width: 45, height: 45,
                                      child: Icon(Icons.add,color: Colors.white,),
                                    ),
                                    onTap: () {
                                      _mapController.animateCamera(
                                        CameraUpdate.zoomIn(),
                                      );
                                    },
                                  ),
                                  label: 'Zoom in to map',
                                  button: true,
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            ClipOval(
                              child: Material(
                                color: Colors.black,
                                child: Semantics(
                                  child: InkWell(
                                    splashColor: Colors.black,
                                    child: SizedBox(
                                      width: 45, height: 45,
                                      child: Icon(Icons.remove,color: Colors.white,),
                                    ),
                                    onTap: () {
                                      _mapController.animateCamera(
                                        CameraUpdate.zoomOut(),
                                      );
                                    },
                                  ),
                                  label: 'Zoom out map',
                                  button: true,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Text('To adjust the volume swipe up and down in '
                  'the view or use tap actions of plus and minus'),
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onPanUpdate: (details) {
                // Swiping in right direction.
                var sensitivity = 20;
                if (details.delta.dx > sensitivity) {
                  setState(() {
                    currentVolume += 1;
                    if(currentVolume >100) {
                      currentVolume = 100;
                    }
                  });
                }
                // Swiping in left direction.
                if (details.delta.dx < -sensitivity) {
                 setState(() {
                   currentVolume -= 1;
                   if(currentVolume < 0){
                     currentVolume = 0;
                   }
                 });
                }
              },
              child: Container(
                width: 300,
                height: 150,
                color:  Colors.black12,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text('Swipe left and right to adjust the volume'),
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ClipOval(
                                child: Material(
                                  color: Colors.black,
                                  child: Semantics(
                                    child: InkWell(
                                      splashColor: Colors.black,
                                      child: SizedBox(
                                        width: 45, height: 45,
                                        child: Icon(Icons.remove,color: Colors.white,),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          currentVolume -= 1;
                                        });
                                      },
                                    ),
                                    label: 'Decrease Volume',
                                    button: true,
                                  ),
                                ),
                              ),
                              Text(currentVolume.toString()),
                              ClipOval(
                                child: Material(
                                  color: Colors.black,
                                  child: Semantics(
                                    child: InkWell(
                                      splashColor: Colors.black,
                                      child: SizedBox(
                                        width: 45, height: 45,
                                        child: Icon(Icons.add,color: Colors.white,),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          currentVolume += 1;
                                        });
                                      },
                                    ),
                                    label: 'Increase Volume',
                                    button: true,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    OutlinedButton( style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                    ),
                        onPressed: (){
                      buildShowDialog(context, 'Volume is set successfully');
                    }, child: Text('Set Volume'))
                  ],
                ),
              ),
            ),
           SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: HeaderSemanticWithText('Bad Example'),
                  ),
                  Text('Multipoint gesture: Below Map view no user actions '
                      'for  Zoom in  & Zoom Out apart from pinch gesture.'),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: 300,
              height: 400,
              child:  Stack(
                children: [
                  Semantics(
                    child: GoogleMap(initialCameraPosition: _initialPosition,
                      myLocationEnabled: true,
                      myLocationButtonEnabled: true,
                      mapType: MapType.normal,
                      zoomGesturesEnabled: true,
                      zoomControlsEnabled: true,
                      onMapCreated: (GoogleMapController controller) {
                        _mapController = controller;
                      },),
                    label: 'Bad Example Mapview',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Text('To adjust the volume swipe up and '
                  'down in the view,alternative does not exist.'),
            ),
            GestureDetector(
              onPanUpdate: (details) {
                // Swiping in right direction.
                var sensitivity = 20;
                if (details.delta.dx > sensitivity) {
                  setState(() {
                    currentVolume += 1;
                    if(currentVolume >100) {
                      currentVolume = 100;
                    }
                  });
                }
                // Swiping in left direction.
                if (details.delta.dx < -sensitivity) {
                  setState(() {
                    currentVolume -= 1;
                    if(currentVolume < 0){
                      currentVolume = 0;
                    }
                  });
                }
              },
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      height: 150,
                      color:  Colors.black12,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text('Swipe left and right to adjust the volume'),
                          SizedBox(
                            height: 15,
                          ),
                          SizedBox(height: 5,),
                          Text(currentVolume.toString()),
                          SizedBox(height: 10,),
                          OutlinedButton( style: ButtonStyle(
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                          ),
                              onPressed: (){
                                buildShowDialog(context, 'Volume is set successfully');
                              }, child: Text('Set Volume'))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 45,),
          ],
        ),
      ),
    );
  }
}
