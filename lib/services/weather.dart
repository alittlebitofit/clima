import 'networking.dart';
import 'location.dart';
import '../utilities/constants.dart';

import 'package:fluttertoast/fluttertoast.dart';

class WeatherModel {
  // NetworkHelper networkHelper;

  Future<dynamic> getCityWeather(String cityName) async {
    String message = '$kWeatherDotGetCityWeatherMethod $kSwiggly';
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        // backgroundColor: Colors.red,
        // textColor: Colors.white,
        fontSize: 16.0);
    print(message);

    String url = '$kOpenMapWeatherURL?q=$cityName&appId=$kApiKey&units=metric';

    NetworkHelper networkHelper = NetworkHelper(url);

    message =
        '$kWeatherDotGetCityWeatherMethod = created NetworkHelper() & before await networkHelper.getData() $kSwiggly';
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        // backgroundColor: Colors.red,
        // textColor: Colors.white,
        fontSize: 16.0);
    print(message);

    var data = await networkHelper.getData();

    message =
        '$kWeatherDotGetCityWeatherMethod = awaited for networkHelper.getData() now returning $kSwiggly';
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        // backgroundColor: Colors.red,
        // textColor: Colors.white,
        fontSize: 16.0);
    print(message);

    return data;
  }

  Future<dynamic> getWeatherLocation() async {
    String message = '$kWeatherDotGetWeatherLocationMethod $kSwiggly';
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        // backgroundColor: Colors.red,
        // textColor: Colors.white,
        fontSize: 16.0);
    print(message);

    Location location = Location();

    message =
        '$kWeatherDotGetWeatherLocationMethod = created Location() object & before await location.createPositionObjectForLatsAndLongs() $kSwiggly';
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        // backgroundColor: Colors.red,
        // textColor: Colors.white,
        fontSize: 16.0);
    print(message);

    await location.createPositionObjectForLatsAndLongs();

    message =
        '$kWeatherDotGetWeatherLocationMethod = awaited location.createPositionObjectForLatsAndLongs() $kSwiggly';
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        // backgroundColor: Colors.red,
        // textColor: Colors.white,
        fontSize: 16.0);
    print(message);

    // NetworkHelper
    NetworkHelper networkHelper = NetworkHelper(
        '$kOpenMapWeatherURL?lat=${location.getLatitude()}&lon=${location.getLongitude()}&appid=$kApiKey&units=metric');

    message =
        '$kWeatherDotGetWeatherLocationMethod = created NetworkHelper() object & before await networkHelper.getData() $kSwiggly';
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        // backgroundColor: Colors.red,
        // textColor: Colors.white,
        fontSize: 16.0);
    print(message);

    var data = await networkHelper.getData();

    message =
        '$kWeatherDotGetWeatherLocationMethod = awaited networkHelper.getData() $kSwiggly';
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        // backgroundColor: Colors.red,
        // textColor: Colors.white,
        fontSize: 16.0);
    print(message);

    return data;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
