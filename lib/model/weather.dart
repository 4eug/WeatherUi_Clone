class WeatherForecast {
  final String location;
  final String region;
  final String currentCondition;
  final String country;
  final double tempCelsius;
  final List<ForecastDay> forecastDay;

  WeatherForecast({
    this.location,
    this.region,
    this.currentCondition,
    this.forecastDay,
    this.country,
    this.tempCelsius,
  });

  factory WeatherForecast.fromJson(Map<String, dynamic> parsedJson) {
    return WeatherForecast(
        location: parsedJson['location']['name'],
        region: parsedJson['location']['region'],
        currentCondition: parsedJson['current']['condition']['text'],
        country: parsedJson['location']['country'],
        tempCelsius: parsedJson['current']['temp_c'],
        forecastDay: (parsedJson['forecast']['forecastday'] as List)
            .map((i) => ForecastDay.fromJson(i))
            .toList());
  }
}

class ForecastDay {
  final String date;

  ForecastDay({this.date});

  factory ForecastDay.fromJson(Map<String, dynamic> parsedJson) {
    return ForecastDay(date: parsedJson['date']);
  }
}
