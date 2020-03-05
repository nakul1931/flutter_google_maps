import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GoogleMapController mapController;
  double latitude,longitude;
  
  

  
    double getLocation() async{
    Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.bestForNavigation);
    // print(position);

    latitude = position.latitude;
    longitude = position.longitude;

    var posJson = '{"lat":$latitude,"lon":$longitude}';

    posJson = jsonEncode(posJson);
    print("This is $posJson");
    // return latitude;
    
    // sendData(posJson);
  }
  // final LatLng _center = LatLng(latitude, longitude);


  

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  
  @override
  void initState()
  {
    super.initState();
    double latitude = getLocation();
    
  }
  //isme lat lon static dalo to chl reha double hi chaiye ise
  // final LatLng _center = LatLng(latitude, longitude);
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Maps Sample App'),
          backgroundColor: Colors.green[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}