import 'package:auth/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../auth/login_or_register.dart';
import 'package:get/get.dart'; // Import Get package for translations

class NotePage extends StatelessWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "note_title".tr), // Translated title
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            border: Border.all(
              color: Theme.of(context).colorScheme.primary,
              width: 3, // Border width
            ),
            borderRadius: BorderRadius.circular(12.0), // Rounded corners
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Title of the note
                Text(
                  "important_note_title".tr, // Translated note title
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(height: 20),
                // Container for the note content
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                      width: 2,
                    ),
                  ),
                  child: Text(
                    "note_content".tr, // Translated note content
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold, // Make the text bold
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    textAlign: TextAlign.center, // Center the text inside the container
                  ),
                ),
                const SizedBox(height: 20),
                // Extra note with emphasis
                Text(
                  "ensure_data_accuracy".tr, // Translated extra note
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontStyle: FontStyle.italic,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  textAlign: TextAlign.center, // Center the extra note text
                ),
                const SizedBox(height: 20),
                // Next button to redirect to LoginOrRegister page
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginOrRegister()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, // Text color
                    backgroundColor: Theme.of(context).colorScheme.primary, // Background color
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Larger button size
                    textStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.bold, // Make the button text bold
                      fontSize: 20, // Adjusted font size
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white, width: 2), // Border style
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                    ),
                  ),
                  child: Text("next_button".tr), // Translated button text
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
