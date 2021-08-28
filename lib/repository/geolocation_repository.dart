import 'package:location/location.dart';
import 'package:weather_test/model/coord_model.dart';

class GeolocationRepository {
  final Location _location;

  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  CoordModel? _lastLocation;

  GeolocationRepository(this._location);

  Future<CoordModel?> getLocation() async {
    _serviceEnabled = await _location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await _location.requestService();
      if (!_serviceEnabled) {
        return _lastLocation;
      }
    }

    _permissionGranted = await _location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await _location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return _lastLocation;
      }
    }

    final LocationData locationData = await _location.getLocation();
    final CoordModel currentLocation = CoordModel(
      (b) => b
        ..lat = locationData.latitude
        ..lon = locationData.longitude
    );

    _lastLocation = currentLocation;

    return currentLocation;
  }
}
