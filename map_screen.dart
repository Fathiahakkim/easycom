import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'carpool_screen.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parking & Traffic'),
        backgroundColor: Colors.blue,
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(37.7749, -122.4194),
          zoom: 12,
        ),
        onMapCreated: (controller) {
          mapController = controller;
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to carpool screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CarpoolScreen()),
          );
        },
        child: Icon(Icons.directions_car),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
