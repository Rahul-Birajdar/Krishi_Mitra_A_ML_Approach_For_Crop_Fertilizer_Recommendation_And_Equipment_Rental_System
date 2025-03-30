import 'package:flutter/material.dart';
import 'package:auth/components/my_button.dart';
import 'package:auth/models/equipment.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart'; // Import GetX for localization
import '../components/custom_app_bar.dart';
import '../models/rent.dart';

class EquipmentPage extends StatefulWidget {
  final Equipment equipment;

  const EquipmentPage({
    super.key,
    required this.equipment,
  });

  @override
  State<EquipmentPage> createState() => _EquipmentPageState();
}

class _EquipmentPageState extends State<EquipmentPage> {
  // method to add to cart
  void addToCart(Equipment equipment) {
    // close the current equipment page to go back to home
    Navigator.pop(context);
    // add to cart
    context.read<Rent>().addToCart(equipment);
  }

  // Localized name based on equipment name
  String _localizedName(String name) {
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

  // Localized description based on equipment description
  String _localizedDescription(String description) {
    switch (description) {
      case  "The John Deere 5075E is a 75 HP tractor, equipped with a 2900 CC engine, 12-speed gearbox, "
          "and a lift capacity of 2000 kg. It is known for its reliability and efficiency, featuring oil-immersed brakes, "
          "ADDC hydraulic control, and a 2050 mm wheelbase."
          "\nRental Price: ₹3000/hour."
          "\nMRP: ₹10,00,000."
          "\nPlease note, if the equipment is damaged during use, a 10% charge of the MRP will apply.":
        return 'john_deere_5075e_desc'.tr; // Localized description for John Deere 5075E
      case  "The Mahindra Jivo 225 DI is a 20 HP mini tractor, "
          "with 8 forward and 4 reverse gears, and a lift capacity of 750 kg. It features oil-immersed brakes and a 22-liter fuel tank. "
          "Known for its multi-purpose use."
          "\nRental Price: ₹1000/hour."
          "\nMRP: ₹5,00,000."
          "\nPlease note, if the equipment is damaged during use, a 10% charge of the MRP will apply.":
        return 'mahindra_jivo_225_desc'.tr; // Localized description for Mahindra Jivo 225
      case  "The John Deere W50 combine harvester comes with a 75 HP turbocharged engine, "
          "featuring a dry-type air cleaner and 4 cylinders. It is technologically advanced."
          "\nRental Price: ₹2000/hour."
          "\nMRP: ₹15,00,000."
          "\nPlease note, if the equipment is damaged during use, a 10% charge of the MRP will apply.":
        return 'john_deere_w50_desc'.tr; // Localized description for John Deere W50
      case  "The Mahindra Arjun 605 combine harvester is known for its excellent mileage and various features."
          "\nRental Price: ₹1500/hour."
          "\nMRP: ₹10,00,000."
          "\nPlease note, if the equipment is damaged during use, a 10% charge of the MRP will apply.":
        return 'mahindra_arjun_605_desc'.tr; // Localized description for Mahindra Arjun 605
      case  "The Mahindra Cultivator is a multi-purpose tool, suitable for 35-65 HP tractors."
          "\nRental Price: ₹1000/hour."
          "\nMRP: ₹20,000."
          "\nPlease note, if the equipment is damaged during use, a 10% charge of the MRP will apply.":
        return 'mahindra_cultivator_desc'.tr; // Localized description for Mahindra Cultivator
      case  "The Swaraj Spring Loaded Cultivator is suitable for 35 HP tractors."
          "\nRental Price: ₹800/hour."
          "\nMRP: ₹22,000."
          "\nPlease note, if the equipment is damaged during use, a 10% charge of the MRP will apply.":
        return 'swaraj_spring_loaded_desc'.tr; // Localized description for Swaraj Spring Loaded Cultivator
      case  "The MC MTL-NT-5M is suitable for 50+ HP tractors."
          "\nRental Price: ₹1000/hour."
          "\nMRP: ₹50,000."
          "\nPlease note, if the equipment is damaged during use, a 10% charge of the MRP will apply.":
        return 'mc_mtl_nt_5m_desc'.tr; // Localized description for MC MTL NT 5M
      case  "The Sai Agro Four-Wheel Tipping 9 is designed for 70-90 HP tractors."
          "\nRental Price: ₹1500/hour."
          "\nMRP: ₹60,000."
          "\nPlease note, if the equipment is damaged during use, a 10% charge of the MRP will apply.":
        return 'sai_agro_four_wheel_desc'.tr; // Localized description for Sai Agro Four Wheel
      case  "The Neptune Hariyali-08 is a lightweight sprayer."
          "\nRental Price: ₹200/hour."
          "\nMRP: ₹2000."
          "\nPlease note, if the equipment is damaged during use, a 10% charge of the MRP will apply.":
        return 'neptune_hariyali_08_desc'.tr; // Localized description for Neptune Hariyali-08
      case  "The Neptune HTP Gold Plus is a robust sprayer."
          "\nRental Price: ₹300/hour."
          "\nMRP: ₹3000."
          "\nPlease note, if the equipment is damaged during use, a 10% charge of the MRP will apply.":
        return 'neptune_htp_gold_desc'.tr; // Localized description for Neptune HTP Gold Plus
      default:
        return description.tr; // Default case for localization
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: CustomAppBar(title: 'add_to_cart'.tr),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(widget.equipment.imagePath),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Localized equipment name
                      Text(
                        _localizedName(widget.equipment.name),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "\₹${widget.equipment.price}",
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Localized equipment description
                      Text(
                        _localizedDescription(widget.equipment.description),
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                MyButton(
                  text: "add_to_cart".tr, // Localized button text
                  onTap: () => addToCart(widget.equipment),
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
        // Back button
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
