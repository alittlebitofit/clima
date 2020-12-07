import 'networking.dart';
import 'location.dart';
import '../utilities/constants.dart';

class WeatherModel {

  NetworkHelper gNetworkHelper;

  Future<dynamic> getCityWeather(String cityName) async {
    String url = '$kOpenMapWeatherURL?q=$cityName&appId=$kApiKey&units=metric';
    gNetworkHelper = NetworkHelper(url);

    return await gNetworkHelper.getData();
  }

  Future<dynamic> getWeatherLocation() async {
    Location location = Location();
    await location.createPositionObjectForLatsAndLongs();

    gNetworkHelper = NetworkHelper(
        '$kOpenMapWeatherURL?lat=${location.getLatitude()}&lon=${location.getLongitude()}&appid=$kApiKey&units=metric');

    return await gNetworkHelper.getData();
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
