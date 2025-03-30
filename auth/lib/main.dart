import 'package:auth/auth/login_or_register.dart';
import 'package:auth/firebase_options.dart';
import 'package:auth/pages/about_us.dart';
import 'package:auth/pages/crop_prediction.dart';
import 'package:auth/pages/home_page.dart';
import 'package:auth/pages/note_page.dart';
import 'package:auth/pages/profile_page.dart';
import 'package:auth/pages/rent_page.dart';
import 'package:auth/pages/weather_page.dart';
import 'package:auth/theme/dark_mode.dart';
import 'package:auth/theme/light_mode.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'LocaleString.dart';
import 'package:get/get.dart';
import 'models/rent.dart';
import 'pages/welcome_page.dart'; // Import the WelcomePage

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Rent()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocalString(),
      locale: const Locale('en', 'US'), // Set default locale
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome_page', // Set initial route to WelcomePage
      theme: lightMode,
      darkTheme: darkMode,
      routes: {
        '/welcome_page': (context) => const WelcomePage(), // Add WelcomePage
        '/note_page': (context) => const NotePage(),
        '/login_or_register': (context) => const LoginOrRegister(),
        '/home_page': (context) => const HomePage(),
        '/profile_page': (context) => const ProfilePage(),
        '/rent_page': (context) => const RentPage(),
        '/about_us': (context) => const AboutUsPage(),
        '/weather_page': (context) => const WeatherPage(),
        '/crop_prediction': (context) => const CropPrediction(),
      },
    );
  }
}
