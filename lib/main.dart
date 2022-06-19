import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/authPages/signUp.dart';
import 'package:location/homeScreens/home.dart';
import 'package:location/widgets/navigation.dart';
import 'package:permission_handler/permission_handler.dart';

import 'homeScreens/location.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginSignupScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//    final Completer<GoogleMapController> _controllerGoogleMap = Completer();
//   late GoogleMapController newGoogleMapController;
//
//   static const CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(-6.708725206082382, 39.226142514392805),
//     zoom: 17.4746,
//   );
//
//    final GeolocatorPlatform _geolocatorPlatform = GeolocatorPlatform.instance;
//    StreamSubscription<Position>? _positionStreamSubscription;
//    bool positionStreamStarted = false;
//
//    late Position currentPosition;
//    String? currentAddress;
//    var geoLocator = Geolocator();
//
//    void locatePosition() async {
//      final locationPermission = await Permission.location.request();
//      if ( locationPermission == PermissionStatus.granted) {
//           _toggleListening();
//            Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);  // get current position of the user
//            currentPosition = position;
//            LatLng latLngPosition = LatLng(position.latitude, position.longitude);  // latitude and longitude of a user
//            CameraPosition cameraPosition = CameraPosition(target: latLngPosition, zoom: 16);  // define camera position
//            newGoogleMapController.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
//            setState(() {
//              currentAddress = 'Latitude ${position.latitude}, Longitude: ${position.longitude}';
//            });
//      }else{
//        openAppSettings();
//      }
//    }
//
//    void _updatePositionList(String displayValue) {
//      currentAddress = displayValue;
//      setState(() {});
//    }
//
//    void _toggleListening() {
//      if (_positionStreamSubscription == null) {
//        final positionStream = _geolocatorPlatform.getPositionStream();
//        _positionStreamSubscription = positionStream.handleError((error) {
//          _positionStreamSubscription?.cancel();
//          _positionStreamSubscription = null;
//        }).listen((position) => _updatePositionList(
//          // _PositionItemType.position,
//          position.toString(),
//        ));
//        _positionStreamSubscription?.pause();
//      }
//
//      setState(() {
//        if (_positionStreamSubscription == null) {
//          return;
//        }
//
//        String statusDisplayValue;
//        if (_positionStreamSubscription!.isPaused) {
//          _positionStreamSubscription!.resume();
//          statusDisplayValue = 'resumed';
//        } else {
//          _positionStreamSubscription!.pause();
//          statusDisplayValue = 'paused';
//        }
//
//        _updatePositionList(
//          'Listening for position updates $statusDisplayValue',
//        );
//      });
//    }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           GoogleMap(
//             initialCameraPosition: _kGooglePlex,
//             myLocationButtonEnabled: true,
//             zoomGesturesEnabled: true,
//             // zoomControlsEnabled: true,
//             myLocationEnabled: true,
//             mapType: MapType.normal,
//             onMapCreated: (GoogleMapController controller){
//               _controllerGoogleMap.complete(controller);
//               newGoogleMapController = controller;
//               locatePosition();
//             },
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: locatePosition,
//         label: Text(currentAddress??""),
//         icon: const Icon(Icons.add_location),
//       ),
//     );
//   }
// }