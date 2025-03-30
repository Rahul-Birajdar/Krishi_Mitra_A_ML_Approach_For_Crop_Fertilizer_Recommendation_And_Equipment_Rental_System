import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  CustomAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16, // Set the font size for the title
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary, // Updated background color
      actions: [
        Row(
          children: [
            TextButton(
              onPressed: () {
                Get.updateLocale(const Locale('en'));
              },
              child: Text(
                'English',
                style: TextStyle(
                  color: Get.locale?.languageCode == 'en' ? Colors.yellow : Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.updateLocale(const Locale('hi'));
              },
              child: Text(
                'हिंदी',
                style: TextStyle(
                  color: Get.locale?.languageCode == 'hi' ? Colors.yellow : Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.updateLocale(const Locale('mr'));
              },
              child: Text(
                'मराठी',
                style: TextStyle(
                  color: Get.locale?.languageCode == 'mr' ? Colors.yellow : Colors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 4), // Add spacing between buttons and other appBar content
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
