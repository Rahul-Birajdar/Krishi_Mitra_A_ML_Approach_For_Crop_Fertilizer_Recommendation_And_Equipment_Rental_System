import 'package:auth/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../components/my_drawer.dart';

class CropPrediction extends StatefulWidget {
  const CropPrediction({super.key});

  @override
  _CropPredictionState createState() => _CropPredictionState();
}

class _CropPredictionState extends State<CropPrediction> {
  final _formKey = GlobalKey<FormState>();

  // Controllers for all input fields
  final TextEditingController _nitrogenController = TextEditingController();
  final TextEditingController _phosphorusController = TextEditingController();
  final TextEditingController _potassiumController = TextEditingController();
  final TextEditingController _temperatureController = TextEditingController();
  final TextEditingController _humidityController = TextEditingController();
  final TextEditingController _rainfallController = TextEditingController();

  String? _predictionResult;
  String? _fertilizerRecommendation;
  String? _errorMessage;
  bool _isLoading = false;

  // Variables for real-time validation errors
  String? _nitrogenError;
  String? _phosphorusError;
  String? _potassiumError;
  String? _temperatureError;
  String? _humidityError;
  String? _rainfallError;

  // Define limits for each parameter
  static const double _maxNitrogen = 150.0;
  static const double _minNitrogen = 1.0;
  static const double _maxPhosphorus = 150.0;
  static const double _minPhosphorus = 5.0;
  static const double _maxPotassium = 205.0;
  static const double _minPotassium = 5.0;
  static const double _maxTemperature = 50.0;
  static const double _minTemperature = 1.0;
  static const double _maxHumidity = 100.0;
  static const double _minHumidity = 1.0;
  static const double _maxRainfall = 300.0;
  static const double _minRainfall = 1.0;

  @override
  void initState() {
    super.initState();

    // Add real-time listeners for input validation
    _nitrogenController.addListener(() {
      _validateNitrogen(_nitrogenController.text);
    });
    _phosphorusController.addListener(() {
      _validatePhosphorus(_phosphorusController.text);
    });
    _potassiumController.addListener(() {
      _validatePotassium(_potassiumController.text);
    });
    _temperatureController.addListener(() {
      _validateTemperature(_temperatureController.text);
    });
    _humidityController.addListener(() {
      _validateHumidity(_humidityController.text);
    });
    _rainfallController.addListener(() {
      _validateRainfall(_rainfallController.text);
    });
  }

  void _validateNitrogen(String value) {
    final doubleValue = double.tryParse(value);
    if (doubleValue == null || doubleValue < _minNitrogen || doubleValue > _maxNitrogen) {
      setState(() {
        _nitrogenError = '${'Enter a value between'.tr} $_minNitrogen ${'and'.tr} $_maxNitrogen';
      });
    } else {
      setState(() {
        _nitrogenError = null;
      });
    }
  }

  void _validatePhosphorus(String value) {
    final doubleValue = double.tryParse(value);
    if (doubleValue == null || doubleValue < _minPhosphorus || doubleValue > _maxPhosphorus) {
      setState(() {
        _phosphorusError = '${'Enter a value between'.tr} $_minPhosphorus ${'and'.tr} $_maxPhosphorus';
      });
    } else {
      setState(() {
        _phosphorusError = null;
      });
    }
  }

  void _validatePotassium(String value) {
    final doubleValue = double.tryParse(value);
    if (doubleValue == null || doubleValue < _minPotassium || doubleValue > _maxPotassium) {
      setState(() {
        _potassiumError = '${'Enter a value between'.tr} $_minPotassium ${'and'.tr} $_maxPotassium';
      });
    } else {
      setState(() {
        _potassiumError = null;
      });
    }
  }

  void _validateTemperature(String value) {
    final doubleValue = double.tryParse(value);
    if (doubleValue == null || doubleValue < _minTemperature || doubleValue > _maxTemperature) {
      setState(() {
        _temperatureError = '${'Enter a value between'.tr} $_minTemperature ${'and'.tr} $_maxTemperature';
      });
    } else {
      setState(() {
        _temperatureError = null;
      });
    }
  }

  void _validateHumidity(String value) {
    final doubleValue = double.tryParse(value);
    if (doubleValue == null || doubleValue < _minHumidity || doubleValue > _maxHumidity) {
      setState(() {
        _humidityError = '${'Enter a value between'.tr} $_minHumidity ${'and'.tr} $_maxHumidity';
      });
    } else {
      setState(() {
        _humidityError = null;
      });
    }
  }

  void _validateRainfall(String value) {
    final doubleValue = double.tryParse(value);
    if (doubleValue == null || doubleValue < _minRainfall || doubleValue > _maxRainfall) {
      setState(() {
        _rainfallError = '${'Enter a value between'.tr} $_minRainfall ${'and'.tr} $_maxRainfall';
      });
    } else {
      setState(() {
        _rainfallError = null;
      });
    }
  }

  Future<void> _predictCrop() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      final nitrogen = _nitrogenController.text;
      final phosphorus = _phosphorusController.text;
      final potassium = _potassiumController.text;
      final temperature = _temperatureController.text;
      final humidity = _humidityController.text;
      final rainfall = _rainfallController.text;

      try {
        final response = await http.post(
          Uri.parse('https://mlapi-8t0g.onrender.com/predict'),
          headers: {'Content-Type': 'application/json'},
          body: json.encode({
            'Nitrogen': double.parse(nitrogen),
            'Phosphorus': double.parse(phosphorus),
            'Potassium': double.parse(potassium),
            'Temperature': double.parse(temperature),
            'Humidity': double.parse(humidity),
            'Rainfall': double.parse(rainfall),
          }),
        );

        if (response.statusCode == 200) {
          final Map<String, dynamic> data = json.decode(response.body);
          setState(() {
            _predictionResult = data['Predicted Crop'];
            _fertilizerRecommendation = data['Recommended Fertilizer'];
            _errorMessage = null;
          });
        } else {
          setState(() {
            _errorMessage = 'Error: ${response.statusCode} ${response.reasonPhrase}';
            _predictionResult = null;
            _fertilizerRecommendation = null;
          });
        }
      } catch (e) {
        setState(() {
          _errorMessage = 'Exception: $e';
          _predictionResult = null;
          _fertilizerRecommendation = null;
        });
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  void _clearFields() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('confirmClear'.tr),
          content: Text('clearInputConfirmation'.tr),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'.tr),
            ),
            TextButton(
              onPressed: () {
                _nitrogenController.clear();
                _phosphorusController.clear();
                _potassiumController.clear();
                _temperatureController.clear();
                _humidityController.clear();
                _rainfallController.clear();
                setState(() {
                  _predictionResult = null;
                  _fertilizerRecommendation = null;
                  _errorMessage = null;
                });
                Navigator.of(context).pop();
              },
              child: Text('Clear'.tr),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _nitrogenController.dispose();
    _phosphorusController.dispose();
    _potassiumController.dispose();
    _temperatureController.dispose();
    _humidityController.dispose();
    _rainfallController.dispose();
    super.dispose();
  }

  Widget _buildInputCard(String label, TextEditingController controller,
      String unit, IconData icon, double min, double max, String? errorText) {
    return Card(
      elevation: 2,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: controller,
              style: const TextStyle(color: Colors.black), // Black text color
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green, width: 2),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red, width: 1.5),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red, width: 2),
                ),

                labelText: '$label ($unit)'.tr,
                labelStyle: const TextStyle(color: Colors.black), // Black label text
                filled: true, // Enable background color
                fillColor: Colors.white, // White background color
                prefixIcon: Icon(icon, color: Colors.green), // Keep prefix icon green
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '${'Please enter a value'.tr}';
                }
                final doubleValue = double.tryParse(value);
                if (doubleValue == null || doubleValue < min || doubleValue > max) {
                  return errorText;
                }
                return null;
              },
            ),
            if (errorText != null)
              Text(
                errorText,
                style: TextStyle(color: Colors.red),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'cropPrediction'.tr),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _buildInputCard(
                  'Nitrogen'.tr,
                  _nitrogenController,
                  'kg/ha'.tr,
                  Icons.nature,
                  _minNitrogen,
                  _maxNitrogen,
                  _nitrogenError,
                ),
                const SizedBox(height: 1),
                _buildInputCard(
                  'Phosphorus'.tr,
                  _phosphorusController,
                  'kg/ha'.tr,
                  Icons.nature_people,
                  _minPhosphorus,
                  _maxPhosphorus,
                  _phosphorusError,
                ),
                const SizedBox(height: 1),
                _buildInputCard(
                  'Potassium'.tr,
                  _potassiumController,
                  'kg/ha'.tr,
                  Icons.nature,
                  _minPotassium,
                  _maxPotassium,
                  _potassiumError,
                ),
                const SizedBox(height: 1),
                _buildInputCard(
                  'Temperature'.tr,
                  _temperatureController,
                  '°C'.tr,
                  Icons.thermostat,
                  _minTemperature,
                  _maxTemperature,
                  _temperatureError,
                ),
                const SizedBox(height: 1),
                _buildInputCard(
                  'Humidity'.tr,
                  _humidityController,
                  '%'.tr,
                  Icons.ac_unit,
                  _minHumidity,
                  _maxHumidity,
                  _humidityError,
                ),
                const SizedBox(height: 1),
                _buildInputCard(
                  'Rainfall'.tr,
                  _rainfallController,
                  'mm'.tr,
                  Icons.grain,
                  _minRainfall,
                  _maxRainfall,
                  _rainfallError,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: _isLoading ? null : _predictCrop,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green),
                  child: _isLoading ? CircularProgressIndicator() : Text(
                      'predictCrop'.tr, // Translated
                  style: const TextStyle(color: Colors.black),
                ),
                ),
                const SizedBox(height: 10),

                ElevatedButton(
                  onPressed: _clearFields,
                  child: Text('clearInputs'.tr,
                    style: const TextStyle(color: Colors.black,
                    ),
                  ), // Translated
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                ),
                const SizedBox(height: 10),
                if (_errorMessage != null)
                  Text(
                    _errorMessage!,
                    style: TextStyle(color: Colors.red),
                  ),
                if (_predictionResult != null)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        // Translate the prediction result and fertilizer recommendation
                        Text(
                          '${'Predicted Crop'.tr}: ${_getTranslatedCrop(
                              _predictionResult!)}', // Translated
                          style: TextStyle(fontSize: 20, color: Colors
                              .black,
                            fontWeight: FontWeight.bold,
                          ), // Increased size and changed color
                        ),
                        Text(
                          '${'Fertilizer Recommendation'.tr}: ${_getTranslatedFertilizer(
                              _fertilizerRecommendation!)}', // Translated
                          style: TextStyle(fontSize: 20, color: Colors
                              .black,
                            fontWeight: FontWeight.bold,
                          ), // Increased size and changed color
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

String _getTranslatedCrop(String crop) {
    switch (crop) {
      case 'Rice':
        return 'crops.Rice'.tr; // Translated
      case 'Corn':
        return 'crops.Maize'.tr; // Translated
      case 'ChickPea':
        return 'crops.ChickPea'.tr; // Translated
      case 'KidneyBeans':
        return 'crops.KidneyBeans'.tr; // Translated
      case 'PigeonPeas':
        return 'crops.PigeonPeas'.tr; // Translated
      case 'MothBeans':
        return 'crops.MothBeans'.tr; // Translated
      case 'MungBean':
        return 'crops.MungBean'.tr; // Translated
      case 'Blackgram':
        return 'crops.Blackgram'.tr; // Translated
      case 'Lentil':
        return 'crops.Lentil'.tr; // Translated
      case 'Pomegranate':
        return 'crops.Pomegranate'.tr; // Translated
      case 'Banana':
        return 'crops.Banana'.tr; // Translated
      case 'Mango':
        return 'crops.Mango'.tr; // Translated
      case 'Grapes':
        return 'crops.Grapes'.tr; // Translated
      case 'Watermelon':
        return 'crops.Watermelon'.tr; // Translated
      case 'Muskmelon':
        return 'crops.Muskmelon'.tr; // Translated
      case 'Apple':
        return 'crops.Apple'.tr; // Translated
      case 'Orange':
        return 'crops.Orange'.tr; // Translated
      case 'Papaya':
        return 'crops.Papaya'.tr; // Translated
      case 'Coconut':
        return 'crops.Coconut'.tr; // Translated
      case 'Cotton':
        return 'crops.Cotton'.tr; // Translated
      case 'Jute':
        return 'crops.Jute'.tr; // Translated
      case 'Coffee':
        return 'crops.Coffee'.tr; // Translated
    // Add more crops as needed
      default:
        return crop; // Return the original if no translation is found
    }
  }

  String _getTranslatedFertilizer(String fertilizer) {
    switch (fertilizer) {
      case 'NPK 10-26-26 or 20-20-0':
        return 'fertilizers.NPK'.tr; // Translated
      case 'Single Super Phosphate (SSP) / DAP':
        return 'fertilizers.SSP'.tr; // Translated
      case 'Muriate of Potash (MOP)':
        return 'fertilizers.MOP'.tr; // Translated
      case 'Single Super Phosphate (SSP) / DAP, Muriate of Potash (MOP)':
        return 'fertilizers.SSP_MOP'.tr; // Translated
      case 'Urea/Ammonium Sulfate':
        return 'fertilizers.Urea'.tr; // Translated
      case 'Urea/Ammonium Sulfate, Muriate of Potash (MOP)':
        return 'fertilizers.Urea_MOP'.tr; // Translated
      case 'Urea/Ammonium Sulfate, Single Super Phosphate (SSP) / DAP, Muriate of Potash (MOP)':
        return 'fertilizers.Urea_SSP_MOP'.tr; // Translated
      case 'Urea/Ammonium Sulfate, Single Super Phosphate (SSP) / DAP':
        return 'fertilizers.Urea_SSP'.tr; // Translated
    // Add more fertilizers as needed
      default:
        return fertilizer; // Return the original if no translation is found
    }
  }
  }
