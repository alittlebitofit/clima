import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kApiKey = '9846d1f43fecc64f6acc7fbe4082b613';
const kOpenMapWeatherURL = 'https://api.openweathermap.org/data/2.5/weather';

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(Icons.location_city, color: Colors.white),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
    borderSide: BorderSide.none,
  ),
);




// TOAST CONSTANTS START
const kSwiggly = '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~';

const kLocationDotcreatePositionObjectForLatsAndLongsMethod = 'location.dart -> createPositionObjectForLatsAndLongs()';

const kNetworkingDotGetDataMethod = 'networking.dart -> getData()';

const kWeatherDotGetWeatherLocationMethod = 'weather.dart -> getWeatherLocation()';
const kWeatherDotGetCityWeatherMethod = 'weather.dart -> getCityWeather()';

const kLoadingScreenDot_getLocationDataMethod = 'loading_screen.dart -> _getLocationData()';

const kLocationScreenDot_updateUIMethod = 'location_screen.dart -> _updateUI()';
const kLocationScreenDotBuildMethod = 'location_screen.dart -> _updateUI()';

// TOAST CONSTANTS END