import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/custom_app_bar.dart';
import '../components/my_drawer.dart';

class AboutUsPage extends StatelessWidget {

   const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'aboutUs'.tr),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "about_us_title".tr, // Ensure this key exists in your localization files
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                "welcome_message".tr, // Ensure this key exists in your localization files
                style: const TextStyle(
                  fontSize: 18,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                "name_explanation".tr, // Ensure this key exists in your localization files
                style: const TextStyle(
                  fontSize: 18,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                "thank_you_message".tr, // Ensure this key exists in your localization files
                style: const TextStyle(
                  fontSize: 18,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
