import 'package:auth/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'note_page.dart'; // Import NotePage
import 'package:get/get.dart'; // Import Get package for translations

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "welcome_title".tr), // Translated title
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(24.0), // Increased padding
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            border: Border.all(
              color: Theme.of(context).colorScheme.primary, // Border color
              width: 3, // Border width
            ),
            borderRadius: BorderRadius.circular(16.0), // Rounded corners
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0), // Inner padding
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Title of the welcome page
                Text(
                  "welcome_message".tr, // Translated welcome message
                  style: Theme.of(context).textTheme.labelLarge?.copyWith( // Use a headline style
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 30, // Set a larger font size
                  ),
                  textAlign: TextAlign.center, // Center the text
                ),
                const SizedBox(height: 30), // Increased space between title and button

                // Next button to redirect to NotePage
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NotePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Theme.of(context).colorScheme.primary, padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Larger button size
                    textStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.bold, // Make the button text bold
                      fontSize: 20, // Adjusted font size
                    ), // Button text color
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white, width: 2), // Debugging border
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                    ),
                  ),
                  child: Text("next_button".tr), // Translated button text with "Next"
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
}
