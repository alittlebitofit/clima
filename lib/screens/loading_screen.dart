import 'package:flutter/material.dart';
import 'location_screen.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../services/weather.dart';

import 'package:fluttertoast/fluttertoast.dart';

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

    var weatherData = await WeatherModel().getWeatherLocation();

    if (weatherData != null) {

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return LocationScreen(weatherData);
          },
        ),
      );

    } else {

      Fluttertoast.showToast(
          msg: 'Weather data couldn\'t be fetched :(',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return LocationScreen(null);
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
