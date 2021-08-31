import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';
import 'package:geocoding/geocoding.dart' as geocoding;
import 'package:weather_app_clone/helpers/api.dart';

import 'package:weather_app_clone/model/weather.dart';

final String callbackURL =
    'https://api.weatherapi.com/v1/forecast.json?key=$apiKey&q=Accra&days=3&aqi=no&alerts=no';

getLocation() async {
  print('point 1');
  Location location = new Location();
  print('point 2');

  bool _serviceEnabled;
  PermissionStatus _permissionGranted;
  LocationData _locationData;

  _serviceEnabled = await location.serviceEnabled();
  if (!_serviceEnabled) {
    _serviceEnabled = await location.requestService();
    if (!_serviceEnabled) {
      return;
    }
  }
  print('point 3');

  _permissionGranted = await location.hasPermission();
  if (_permissionGranted == PermissionStatus.denied) {
    _permissionGranted = await location.requestPermission();
    if (_permissionGranted != PermissionStatus.granted) {
      return;
    }
  }
  print('point 4');

  _locationData = await location.getLocation();
  print(_locationData);
  List<geocoding.Placemark> placemarks =
      await geocoding.placemarkFromCoordinates(
          _locationData.latitude, _locationData.longitude);
  print(placemarks[0].subLocality);
  return placemarks;
  // print(_locationData);
  // print('point 5');
  // print(_locationData.latitude);
}

class WeatherService {
  Future<WeatherForecast> fetchWeather(
      List<geocoding.Placemark> address) async {
    http.Response response = await http.get(Uri.parse(
        'https://api.weatherapi.com/v1/forecast.json?key=$apiKey&q=${address[0].subLocality}&days=3&aqi=no&alerts=no'));
    if (response.statusCode == 200) {
      WeatherForecast weather =
          WeatherForecast.fromJson(jsonDecode(response.body));
      print(weather.forecastDay[0].date);
      print(weather.forecastHour[0].tempC);
      print('gotten');
      return weather;
      //returning parsed data from json issue

    } else {
      throw Exception('something went wrong, ${response.statusCode}');
    }
  }
}
