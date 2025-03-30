import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import Get for localization

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    // Text styles
    var myPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
    var mySecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
      fontSize: 14,
    );

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Delivery fee
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("free_delivery".tr, style: myPrimaryTextStyle), // Use translation key
              Text("delivery_fee".tr, style: mySecondaryTextStyle), // Use translation key
            ],
          ),

          // Delivery time
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("in_1_2_days".tr, style: myPrimaryTextStyle), // Use translation key
              Text("delivery_time".tr, style: mySecondaryTextStyle), // Use translation key
            ],
          ),
        ],
      ),
    );
  }
}
