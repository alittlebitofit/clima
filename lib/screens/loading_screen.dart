import 'package:flutter/material.dart';
import 'location_screen.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../services/weather.dart';

import 'package:fluttertoast/fluttertoast.dart';

import '../utilities/constants.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    _getLocationData();
  }

  void _getLocationData() async {

    String message =
        '$kLoadingScreenDot_getLocationDataMethod = before await WeatherModel().getWeatherLocation() $kSwiggly';
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        // backgroundColor: Colors.red,
        // textColor: Colors.white,
        fontSize: 16.0);
    print(message);

    var weatherData = await WeatherModel().getWeatherLocation();

    message =
    '$kLoadingScreenDot_getLocationDataMethod = awaited WeatherModel().getWeatherLocation() $kSwiggly';
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        // backgroundColor: Colors.red,
        // textColor: Colors.white,
        fontSize: 16.0);
    print(message);

    if (weatherData != null) {

      message =
      '$kLoadingScreenDot_getLocationDataMethod = weatherData != null $kSwiggly';

      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      print(message);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return LocationScreen(weatherData);
          },
        ),
      );

    } else {

      message =
      '$kLoadingScreenDot_getLocationDataMethod = weatherData == null $kSwiggly';

      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      print(message);

      var errorData = null;
      // {
      //   'main': {
      //     'temp': -300,
      //   },
      //   'weather': [
      //     {
      //       'id': -1,
      //     },
      //   ],
      //   'name': 'Error loading city'
      // };

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return LocationScreen(errorData);
          },
        ),
      );

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
        ),
      ),
    );
  }
}
