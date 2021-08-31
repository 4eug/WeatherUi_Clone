class WeatherForecast {
  final String location;
  final String region;
  final String currentCondition;
  final String country;
  final double tempCelsius;
  final List<ForecastDay> forecastDay;
  final List<ForecastHour> forecastHour;

  WeatherForecast({
    this.location,
    this.region,
    this.currentCondition,
    this.forecastDay,
    this.forecastHour,
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
            .toList(),
        forecastHour: (parsedJson['forecast']['forecastday'][0]['hour'] as List)
            .map((i) => ForecastHour.fromJson(i))
            .toList());
  }
}

class ForecastDay {
  final String date;
  final String condition;
  final double minTempC;
  final double maxTempC;

  ForecastDay({this.date, this.condition, this.minTempC, this.maxTempC});

  factory ForecastDay.fromJson(Map<String, dynamic> parsedJson) {
    return ForecastDay(
        date: parsedJson['date'],
        condition: parsedJson['day']['condition']['text'],
        minTempC: parsedJson['day']['mintemp_c'],
        maxTempC: parsedJson['day']['maxtemp_c']);
  }
}

class ForecastHour {
  final double tempC;
  final String condition;
  // final String time;
  // final String timeEpoch;

  ForecastHour({
    this.condition,
    this.tempC,
    // this.time,
    // this.timeEpoch
  });

  factory ForecastHour.fromJson(Map<String, dynamic> parsedJson) {
    return ForecastHour(
      tempC: parsedJson['temp_c'],
      condition: parsedJson['condition']['text'],
      // time: parsedJson['time'],
      // timeEpoch: parsedJson['time_epoch']
    );
  }
}
