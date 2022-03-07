import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class informacion_Club extends StatefulWidget {
  informacion_Club({Key? key}) : super(key: key);

  @override
  State<informacion_Club> createState() => _informacion_ClubState();
}

class _informacion_ClubState extends State<informacion_Club> {

  final _initialCameraPosition = const CameraPosition(
    target: LatLng(20.957968, -89.579368),
      zoom: 15
  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: GoogleMap(
        initialCameraPosition: _initialCameraPosition,
      ),
    );
  }
}