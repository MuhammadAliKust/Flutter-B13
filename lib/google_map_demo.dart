import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapDemo extends StatelessWidget {
  GoogleMapDemo({super.key});

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  Set<Marker> markers = {
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(33.6995, 73.0363),
        infoWindow: InfoWindow(title: 'Islamabad')),
    Marker(
        markerId: MarkerId('2'),
        position: LatLng(33.7995, 73.0363),
        infoWindow: InfoWindow(title: 'Islamabad')),
    Marker(
        markerId: MarkerId('3'),
        position: LatLng(33.8995, 73.0363),
        infoWindow: InfoWindow(title: 'Islamabad')),
    Marker(
        markerId: MarkerId('4'),
        position: LatLng(33.9995, 73.0363),
        infoWindow: InfoWindow(title: 'Islamabad')),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Maps"),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        markers: markers,
        // zoomGesturesEnabled: false,
        // zoomControlsEnabled: false,
        initialCameraPosition:
            CameraPosition(target: LatLng(33.6995, 73.0363), zoom: 14),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
