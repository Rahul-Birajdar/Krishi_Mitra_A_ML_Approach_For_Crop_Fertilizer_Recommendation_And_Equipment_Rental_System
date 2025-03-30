import 'package:flutter/material.dart';
import 'package:auth/models/equipment.dart';
import 'package:get/get.dart'; // Ensure you have this import for localization

class EquipmentTile extends StatelessWidget {
  final Equipment equipment;
  final void Function()? onTap;

  const EquipmentTile({
    super.key,
    required this.equipment,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Define colors based on equipment category
    Color categoryColor;
    String localizedCategory;

    switch (equipment.category) {
      case EquipmentCategory.tractors:
        categoryColor = Colors.green; // Example color for tractors
        localizedCategory = 'tractors'.tr; // Localized category name
        break;
      case EquipmentCategory.harvesters:
        categoryColor = Colors.yellow; // Example color for harvesters
        localizedCategory = 'harvesters'.tr; // Localized category name
        break;
      case EquipmentCategory.cultivators:
        categoryColor = Colors.blue; // Example color for cultivators
        localizedCategory = 'cultivators'.tr; // Localized category name
        break;
      case EquipmentCategory.trailers:
        categoryColor = Colors.orange; // Example color for trailers
        localizedCategory = 'trailers'.tr; // Localized category name
        break;
      case EquipmentCategory.sprayers:
        categoryColor = Colors.purple; // Example color for sprayers
        localizedCategory = 'sprayers'.tr; // Localized category name
        break;
      default:
        categoryColor = Colors.grey; // Default color
        localizedCategory = equipment.category.toString(); // Default case
    }

    return Column(children: [
      GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            children: [
              // Text equipment details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Localize the equipment name
                    Text(
                      _localizedName(equipment.name), // Localized name
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      "\₹${equipment.price.toString()}",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Localize the equipment description
                    Text(
                      _localizedDescription(equipment.description), // Localized description
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Display the localized category
                    Text(
                      localizedCategory,
                      style: TextStyle(
                        color: categoryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 2), // Equipment image
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  equipment.imagePath,
                  height: 200,
                  width: 150, // Set width to maintain aspect ratio
                  fit: BoxFit.cover, // Maintain aspect ratio
                ),
              ),
            ],
          ),
        ),
      ),
      // Divider line with category color
      Divider(
        color: categoryColor,
        endIndent: 25,
        indent: 25,
      ),
    ]);
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
}
