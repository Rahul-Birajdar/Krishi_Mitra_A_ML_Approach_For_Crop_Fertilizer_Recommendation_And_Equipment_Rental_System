// Import necessary libraries
import 'package:auth/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../components/my_drawer.dart';
import '../models/weather_model.dart';
import '../services/weather_service.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final WeatherService _weatherService = WeatherService('d5c221ee083b4f66141dd06333f5a8e3');
  Weather? _weather;
  TextEditingController _cityController = TextEditingController();

  // Fetch weather data
  Future<void> _fetchWeather(String cityName) async {
    try {
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    } catch (e) {
      print(e);
    }
  }

  // Get appropriate animation for the weather condition
  String getWeatherAnimation(String? mainCondition) {
    if (mainCondition == null) return 'assets/sunny.json'; // Default to sunny

    switch (mainCondition.toLowerCase()) {
      case 'clouds':
      case 'mist':
      case 'smoke':
      case 'haze':
      case 'dust':
      case 'fog':
        return 'assets/cloud.json';
      case 'rain':
      case 'drizzle':
      case 'shower rain':
        return 'assets/rain.json';
      case 'thunderstorm':
        return 'assets/thunder.json';
      case 'clear':
        return 'assets/sunny.json';
      default:
        return 'assets/sunny.json';
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchWeather("Mumbai"); // Default city
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'weather'.tr),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // City input
            TextField(
              controller: _cityController,
              style: const TextStyle(color: Colors.black), // Black text color
              decoration: InputDecoration(
                labelText: 'enter_city'.tr, // Translated label
                labelStyle: const TextStyle(color: Colors.black), // Black label text
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search, color: Colors.black), // Black icon
                  onPressed: () {
                    _fetchWeather(_cityController.text);
                  },
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black), // Black border when not focused
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2), // Thicker black border when focused
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Weather details
            _weather == null
                ? const CircularProgressIndicator()
                : Column(
              children: [
                Text(
                  _weather?.cityName ?? "loading_city".tr, // Translated loading text
                  style: const TextStyle(fontSize: 28),
                ),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Lottie.asset(
                    getWeatherAnimation(_weather?.mainCondition),
                  ),
                ),
                Text(
                  '${_weather?.temperature.round()}℃',
                  style: const TextStyle(fontSize: 44),
                ),
                Text(
                  _translateWeatherCondition(_weather?.mainCondition), // Translated weather condition
                  style: const TextStyle(fontSize: 24),
                ),
                Text(
                  'humidity_label'.tr.replaceFirst('{value}', '${_weather?.humidity}'), // Translated humidity
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'wind_speed_label'.tr.replaceFirst('{value}', '${_weather?.windSpeed}'), // Translated wind speed
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Translate weather condition
  String _translateWeatherCondition(String? mainCondition) {
    if (mainCondition == null) return "Unknown"; // Default case

    switch (mainCondition.toLowerCase()) {
      case 'clouds':
        return 'clouds'.tr;
      case 'mist':
        return 'mist'.tr;
      case 'smoke':
        return 'smoke'.tr;
      case 'haze':
        return 'haze'.tr;
      case 'dust':
        return 'dust'.tr;
      case 'fog':
        return 'fog'.tr;
      case 'rain':
        return 'rain'.tr;
      case 'drizzle':
        return 'drizzle'.tr;
      case 'shower rain':
        return 'shower_rain'.tr;
      case 'thunderstorm':
        return 'thunderstorm'.tr;
      case 'clear':
        return 'clear'.tr;
      default:
        return 'clear'.tr; // Default to clear
    }
  }
}
