import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app_clone/helpers/api.dart';

import 'package:weather_app_clone/model/weather.dart';

final String callbackURL =
    'https://api.weatherapi.com/v1/forecast.json?key=$apiKey&q=Accra&days=3&aqi=no&alerts=no';

class WeatherService {
  Future<WeatherForecast> fetchWeather() async {
    http.Response response = await http.get(Uri.parse(callbackURL));
    if (response.statusCode == 200) {
      WeatherForecast weather =
          WeatherForecast.fromJson(jsonDecode(response.body));
      print(weather.forecastDay[0].date);
      print(weather.forecastHour[0].tempC);
      return weather;
      //returning parsed data from json issue

    } else {
      throw Exception('something went wrong, ${response.statusCode}');
    }
  }
}
