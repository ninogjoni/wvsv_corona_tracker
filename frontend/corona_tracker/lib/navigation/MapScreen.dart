import 'package:corona_tracker/i18n/appLocalizations.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  final center;

  const MapScreen({this.center});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).MapScreen_AppBarTitleText),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return GoogleMap(
      initialCameraPosition: _getCameraPosition(),
      markers: _getMarkers(),
    );
  }

  CameraPosition _getCameraPosition() {
    final cameraPosition = CameraPosition(
      target: LatLng(51.165691, 10.451526),
      zoom: 8,
    );

    return cameraPosition;
  }

  Set<Marker> _getMarkers() {
    final markers = Set<Marker>();

    // TOOD Add markers

    return markers;
  }
}
