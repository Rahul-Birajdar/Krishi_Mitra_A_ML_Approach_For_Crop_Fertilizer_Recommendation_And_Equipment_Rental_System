class Weather {
  final String cityName;
  final double temperature;
  final String mainCondition;
  final int humidity;
  final double windSpeed;
  final int pressure;

  Weather({
    required this.cityName,
    required this.temperature,
    required this.mainCondition,
    required this.humidity,
    required this.windSpeed,
    required this.pressure,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temperature: json['main']['temp'].toDouble(),
      mainCondition: json['weather'][0]['main'],
      humidity: json['main']['humidity'],
      windSpeed: json['wind']['speed'].toDouble(),
      pressure: json['main']['pressure'],
    );
  }
}

class HourlyWeather {
  final double temperature;
  final String condition;
  final int hour;

  HourlyWeather({
    required this.temperature,
    required this.condition,
    required this.hour,
  });

  factory HourlyWeather.fromJson(Map<String, dynamic> json) {
    return HourlyWeather(
      temperature: json['main']['temp'].toDouble(),
      condition: json['weather'][0]['main'],
      hour: DateTime.parse(json['dt_txt']).hour,
    );
  }
}
