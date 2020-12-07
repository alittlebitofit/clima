import 'package:geolocator/geolocator.dart';

import 'package:fluttertoast/fluttertoast.dart';

class Location {
  double _latitude;
  double _longitude;

  double getLatitude() {
    return _latitude;
  }

  double getLongitude() {
    return _longitude;
  }

  Future<void> createPositionObjectForLatsAndLongs() async {
    try {

      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      if (position == null) {
        Fluttertoast.showToast(
            msg: 'No position. Maybe the device is in a tunnel hmm...',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            fontSize: 16.0);
      }

      _latitude = position.latitude;
      _longitude = position.longitude;

    } catch (e) {
      Fluttertoast.showToast(
          msg: e,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          fontSize: 16.0);
    }
  }
}
