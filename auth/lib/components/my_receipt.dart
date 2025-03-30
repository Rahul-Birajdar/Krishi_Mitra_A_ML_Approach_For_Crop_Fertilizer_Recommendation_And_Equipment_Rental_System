import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart'; // Import Get for localization

import '../models/rent.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("thank_you_order".tr), // Use translation key
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).colorScheme.secondary),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: Consumer<Rent>(
                    builder: (context, rent, child) => Text(rent.displayCartReceipt()),
                  ),
                ),
                const SizedBox(height: 10),
                Text("estimated_delivery".tr), // Use translation key
              ],
            ),
          ),
        );
      },
    );
  }
}
