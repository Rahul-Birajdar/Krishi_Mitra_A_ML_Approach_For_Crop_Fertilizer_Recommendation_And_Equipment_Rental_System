import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart'; // Import Get for localization

import '../models/rent.dart';

class MyCurrentLocation extends StatelessWidget {
  MyCurrentLocation({super.key});

  final textController = TextEditingController();

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white, // Ensure white background
        title: Text(
          "your_location".tr, // Use translation key
          style: TextStyle(color: Colors.black), // Make title black
        ),
        content: TextField(
          controller: textController,
          decoration: InputDecoration(
            hintText: "enter_address".tr, // Use translation key
            hintStyle: TextStyle(color: Colors.black), // Slightly dark hint
            border: OutlineInputBorder(), // Normal border
          ),
          style: TextStyle(color: Colors.black), // Make input text black
        ),
        actions: [
          // Cancel button
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              textController.clear();
            },
            child: Text(
              "cancel".tr, // Use translation key
              style: TextStyle(color: Colors.black), // Make text black
            ),
          ),

          // Save button
          MaterialButton(
            onPressed: () {
              // update delivery address
              String newAddress = textController.text;
              context.read<Rent>().updateDeliveryAddress(newAddress);
              Navigator.pop(context);
              textController.clear();
            },
            child: Text("save".tr,
              style: TextStyle(color: Colors.black),
            ), // Use translation key
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "deliver_now".tr, // Use translation key
            style: TextStyle(
              color: Theme.of(context).colorScheme.background,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                // Address
                Consumer<Rent>(
                  builder: (context, rent, child) => Text(
                    rent.deliveryAddress,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.background,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Drop-down menu icon
                const Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
