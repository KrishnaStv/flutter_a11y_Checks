import 'package:sample1/importFiles.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsSampleExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new GoogleMapsSampleExampleState();
  }
}

class GoogleMapsSampleExampleState extends State<GoogleMapsSampleExample> {
  CameraPosition _initialPosition = CameraPosition(target: LatLng(0.0,0.0));
  late GoogleMapController _mapController;
  // Geolocator _geolocator = Geolocator();
  // late Position _currentPosition;

  // _getCurrentLocation() async {
  //   await _geolocator
  //       .getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
  //       .then((Position position) async {
  //        setState(() {
  //          _currentPosition = position;
  //          debugPrint('Current Postion $_currentPosition');
  //          _mapController.animateCamera(
  //            CameraUpdate.newCameraPosition(
  //              CameraPosition(target: LatLng(position.latitude,position.longitude),
  //                zoom: 18.0,
  //              ),
  //            ),
  //          );
  //        });
  //      }).catchError((e) {
  //     debugPrint(e);
  //   });
  // }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Google Maps'),),
      body: Stack(
        children: [
          GoogleMap(initialCameraPosition: _initialPosition,
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          mapType: MapType.normal,
          zoomGesturesEnabled: true,
          zoomControlsEnabled: true,
          onMapCreated: (GoogleMapController controller) {
            _mapController = controller;
          },),
          SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Material(
                        color: Colors.black,
                        child: InkWell(
                          splashColor: Colors.black,
                          child: SizedBox(
                            width: 50, height: 50,
                            child: Icon(Icons.add,color: Colors.white,),
                          ),
                          onTap: () {
                            _mapController.animateCamera(
                              CameraUpdate.zoomIn(),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    ClipOval(
                      child: Material(
                        color: Colors.black,
                        child: InkWell(
                          splashColor: Colors.black,
                          child: SizedBox(
                            width: 50, height: 50,
                            child: Icon(Icons.remove,color: Colors.white,),
                          ),
                          onTap: () {
                            _mapController.animateCamera(
                              CameraUpdate.zoomOut(),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }

}