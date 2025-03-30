import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auth/pages/cart_page.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySliverAppBar({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDarkMode = theme.brightness == Brightness.dark;
    final textColor = isDarkMode ? Colors.white : Colors.black;

    return SliverAppBar(
      title: Text('rentTitle'.tr), // Assuming 'rentTitle' is in your translation files
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      backgroundColor: theme.colorScheme.primary,
      foregroundColor: theme.colorScheme.onPrimary,
      actions: [
        // Cart button
        IconButton(
          onPressed: () {
            // Go to cart page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartPage()),
            );
          },
          icon: Icon(
            Icons.shopping_cart,
            color: textColor,
          ),
        ),
        // Language selection buttons
        Row(
          children: [
            TextButton(
              onPressed: () {
                Get.updateLocale(const Locale('en'));
              },
              child: Text(
                'English',
                style: TextStyle(
                  color: Get.locale?.languageCode == 'en' ? Colors.yellow : textColor,
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
                  color: Get.locale?.languageCode == 'hi' ? Colors.yellow : textColor,
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
                  color: Get.locale?.languageCode == 'mr' ? Colors.yellow : textColor,
                ),
              ),
            ),
            const SizedBox(width: 10), // Add spacing between buttons and other AppBar content
          ],
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        expandedTitleScale: 1,
      ),
    );
  }
}
