import 'package:flutter/material.dart';
import 'package:auth/components/my_quantity_selector.dart';
import 'package:auth/components/my_hour_selector.dart'; // Add hour selector component
import 'package:auth/models/cart_item.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../models/rent.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Rent>(
      builder: (context, rent, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  // equipment image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      cartItem.equipment.imagePath,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  const SizedBox(width: 10),

                  // name and price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // name
                      Text(
                        _getLocalizedName(cartItem.equipment.name), // Use the translation function
                      ),
                      // price per hour
                      Text(
                        '\₹${cartItem.equipment.price}/hour',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),

                      const SizedBox(height: 10),

                      // increment or decrement quantity
                      QuantitySelector(
                        quantity: cartItem.quantity,
                        equipment: cartItem.equipment,
                        onDecrement: () {
                          rent.removeFromCart(cartItem);
                        },
                        onIncrement: () {
                          rent.addToCart(cartItem.equipment);
                        },
                      ),
                    ],
                  ),


                ],
              ),
            ),

            // Hour selection
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Row(
                children: [
                  // Display 'Hours:'
                  Text('hours'.tr), // Updated to use translation key
                  const SizedBox(width: 10),

                  // Hour Selector
                  HourSelector(
                    hours: cartItem.hours,
                    onDecrement: () {
                      rent.updateHours(cartItem, false); // decrease hours
                    },
                    onIncrement: () {
                      rent.updateHours(cartItem, true); // increase hours
                    },
                  ),

                  const Spacer(),

                  // Total Price Display
                  Text(
                    'total'.tr + '\₹${(cartItem.equipment.price * cartItem.quantity * cartItem.hours).toStringAsFixed(2)}', // Updated to use translation key
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            // Number of items display
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Row(
                children: [
                  // Display number of items
                  Text(
                    'equipments'.tr + ': ${cartItem.quantity}', // Updated to use translation key
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getLocalizedName(String name) {
    switch (name) {
      case 'John Deere 5075E':
        return 'john_deere_5075e'.tr; // Localized name
      case 'Mahindra Jivo 225 DI':
        return 'mahindra_jivo_225'.tr; // Localized name
      case 'John Deere W50 Combine Harvester':
        return 'john_deere_w50'.tr; // Localized name
      case 'Mahindra Arjun 605':
        return 'mahindra_arjun_605'.tr; // Localized name
      case 'Mahindra Cultivator':
        return 'mahindra_cultivator'.tr; // Localized name
      case 'Swaraj Spring Loaded Cultivator':
        return 'swaraj_spring_loaded'.tr; // Localized name
      case 'MC MTL NT 5M':
        return 'mc_mtl_nt_5m'.tr; // Localized name
      case 'Sai Agro Four-Wheel Tipping 9':
        return 'sai_agro_four_wheel'.tr; // Localized name
      case 'Neptune Hariyali-08 Manual':
        return 'neptune_hariyali_08'.tr; // Localized name
      case 'Neptune HTP Gold Plus':
        return 'neptune_htp_gold'.tr; // Localized name
      default:
        return name.tr; // Default case
    }
  }
}
