import 'package:sample1/importFiles.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:io' show Platform;

class GoogleMapsSample extends StatefulWidget {

  final bool isforBadExample;

  GoogleMapsSample({required this.isforBadExample});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new GoogleMapsSampleState(isforBadExample: isforBadExample);
  }
}

class GoogleMapsSampleState extends State<GoogleMapsSample> {

   bool isforBadExample;

  GoogleMapsSampleState({required this.isforBadExample});


  CameraPosition _initialPosition = CameraPosition(target: LatLng(0.0,0.0));
  late GoogleMapController _mapController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // if (Platform.isAndroid) {
    //   isforBadExample = true;
    // }

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps'),
      ),
      body: Stack(
        children: [
          Semantics(
            child: GoogleMap(initialCameraPosition: _initialPosition,
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              mapType: MapType.normal,
              zoomGesturesEnabled: true,
              zoomControlsEnabled: false,
              onMapCreated: (GoogleMapController controller) {
                _mapController = controller;
              },
            ),
            label: 'Google Maps View',
          ),
          isforBadExample ? Container() :SafeArea(
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
      )
    );
  }
}