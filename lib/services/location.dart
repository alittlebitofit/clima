import 'package:geolocator/geolocator.dart';

import 'package:fluttertoast/fluttertoast.dart';

import '../utilities/constants.dart';

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
      String message =
          '$kLocationDotcreatePositionObjectForLatsAndLongsMethod = tryBlockStart before await Geolocation.getCurrentPosition() for Position object $kSwiggly';
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          // backgroundColor: Colors.red,
          // textColor: Colors.white,
          fontSize: 16.0);
      print(message);

      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      message =
      '$kLocationDotcreatePositionObjectForLatsAndLongsMethod = awaited for Position object so what is Position? $kSwiggly';
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          // backgroundColor: Colors.red,
          // textColor: Colors.white,
          fontSize: 16.0);
      print(message);


      if (position == null) {
        message =
            '$kLocationDotcreatePositionObjectForLatsAndLongsMethod = Position == null $kSwiggly';
        Fluttertoast.showToast(
            msg: message,
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            // backgroundColor: Colors.red,
            // textColor: Colors.white,
            fontSize: 16.0);
        print(message);


      } else {


        message =
            '$kLocationDotcreatePositionObjectForLatsAndLongsMethod = position != null $kSwiggly';
        Fluttertoast.showToast(
            msg: message,
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            // backgroundColor: Colors.red,
            // textColor: Colors.white,
            fontSize: 16.0);
        print(message);
      }

      _latitude = position.latitude;
      _longitude = position.longitude;


      message =
      '$kLocationDotcreatePositionObjectForLatsAndLongsMethod = Position value: $position $kSwiggly';
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          // backgroundColor: Colors.red,
          // textColor: Colors.white,
          fontSize: 16.0);
      print(message);

      message = 'tryBlockEnd ==========================================success';
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          // backgroundColor: Colors.red,
          // textColor: Colors.white,
          fontSize: 16.0);
      print(message);


    } catch (e) {
      String message =
          '$kLocationDotcreatePositionObjectForLatsAndLongsMethod = catchBlockStart exception occurred, what is exception?';
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          // backgroundColor: Colors.red,
          // textColor: Colors.white,
          fontSize: 16.0);
      print(message);


      message =
          '$kLocationDotcreatePositionObjectForLatsAndLongsMethod = exception value: $e $kSwiggly';
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          // backgroundColor: Colors.red,
          // textColor: Colors.white,
          fontSize: 16.0);
      print(message);


      message =
      '$kLocationDotcreatePositionObjectForLatsAndLongsMethod = catchBlockEnd ===========================================fail $kSwiggly';
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          // backgroundColor: Colors.red,
          // textColor: Colors.white,
          fontSize: 16.0);
      print(message);

    }
  }
}
