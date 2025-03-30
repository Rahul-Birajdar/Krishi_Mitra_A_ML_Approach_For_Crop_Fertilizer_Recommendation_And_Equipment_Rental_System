import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:auth/models/cart_item.dart';
import 'equipment.dart';

class Rent extends ChangeNotifier {
  final List<Equipment> _menu = [
    Equipment(
      name: 'john_deere_5075e'.tr,
      description: 'john_deere_5075e_desc'.tr,
      imagePath: "lib/images/tractors/John Deere 5075E.webp",
      price: 3000,
      category: EquipmentCategory.tractors,
    ),
    Equipment(
      name: 'mahindra_jivo_225'.tr,
      description: 'mahindra_jivo_225_desc'.tr,
      imagePath: "lib/images/tractors/Mahindra Jivo 225 DI.webp",
      price: 2000,
      category: EquipmentCategory.tractors,
    ),
    Equipment(
      name: 'john_deere_w50'.tr,
      description: 'john_deere_w50_desc'.tr,
      imagePath: "lib/images/harvesters/John Deere W50 Grain Harvester.jpg",
      price: 2000,
      category: EquipmentCategory.harvesters,
    ),
    Equipment(
      name: 'mahindra_arjun_605'.tr,
      description: 'mahindra_arjun_605_desc'.tr,
      imagePath: "lib/images/harvesters/Mahindra Arjun 605.jpg",
      price: 1500,
      category: EquipmentCategory.harvesters,
    ),
    Equipment(
      name: 'mahindra_cultivator'.tr,
      description: 'mahindra_cultivator_desc'.tr,
      imagePath: "lib/images/cultivators/Mahindra Cultivator.jpg",
      price: 1000,
      category: EquipmentCategory.cultivators,
    ),
    Equipment(
      name: 'swaraj_spring_loaded'.tr,
      description: 'swaraj_spring_loaded_desc'.tr,
      imagePath: "lib/images/cultivators/Swaraj Spring Loaded Cultivator.jpg",
      price: 800,
      category: EquipmentCategory.cultivators,
    ),
    Equipment(
      name: 'mc_mtl_nt_5m'.tr,
      description: 'mc_mtl_nt_5m_desc'.tr,
      imagePath: "lib/images/trailers/MC MTL NT 5M.webp",
      price: 1000,
      category: EquipmentCategory.trailers,
    ),
    Equipment(
      name: 'sai_agro_four_wheel'.tr,
      description: 'sai_agro_four_wheel_desc'.tr,
      imagePath: "lib/images/trailers/Sai Agro Four Wheel tipping 9.webp",
      price: 1500,
      category: EquipmentCategory.trailers,
    ),
    Equipment(
      name: 'neptune_hariyali_08'.tr,
      description: 'neptune_hariyali_08_desc'.tr,
      imagePath: "lib/images/sprayers/Neptune Hariyali-08 Manual.jpg",
      price: 500,
      category: EquipmentCategory.sprayers,
    ),
    Equipment(
      name: 'neptune_htp_gold'.tr,
      description: 'neptune_htp_gold_desc'.tr,
      imagePath: "lib/images/sprayers/Neptune HTP Gold Plus.jpg",
      price: 800,
      category: EquipmentCategory.sprayers,
    ),
  ];

  // User cart
  final List<CartItem> _cart = [];

  // delivery address which can be changed
  String _deliveryAddress = '123 Balaji Bldg';

  /*
  G E T T E R S
  */
  List<Equipment> get menu => _menu;

  List<CartItem> get cart => _cart;

  String get deliveryAddress => _deliveryAddress;

  /*
  O P E R A T I O N S
  */
  // Add to cart
  void addToCart(Equipment equipment) {
    // Find existing cart item for the same equipment
    CartItem? cartItem = _cart.firstWhereOrNull((item) =>
    item.equipment == equipment);

    // If the item already exists, increase the quantity
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      // Add new item to cart with default 1-hour rental
      _cart.add(
        CartItem(
          equipment: equipment,
          hours: 1,
        ),
      );
    }
    notifyListeners(); // Notify listeners of changes
  }

  // Remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      // Decrease the quantity or remove item if quantity is 1
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners(); // Notify listeners of changes
  }

  // Update rental hours
  void updateHours(CartItem cartItem, bool increase) {
    if (increase) {
      cartItem.hours++;
    } else if (cartItem.hours > 1) {
      cartItem.hours--;
    }
    notifyListeners(); // Notify listeners of changes
  }

  // Get total price of cart
  double getTotalPrice() {
    return _cart.fold(0.0, (total, cartItem) {
      return total +
          (cartItem.equipment.price * cartItem.quantity * cartItem.hours);
    });
  }

  // Get total number of items in cart
  int getTotalItemCount() {
    return _cart.fold(0, (total, cartItem) => total + cartItem.quantity);
  }

  // Clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners(); // Notify listeners of changes
  }

  // update the delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  /*
  H E L P E R S
  */
// Generate receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln(
        "here_is_your_receipt".tr); // Updated to use translation key
    receipt.writeln();

    // Format the date to include up to seconds
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(
        DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln(
        "-----------------------------------------------------------------");

    // Generate receipt for each cart item
    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.equipment.name.tr} for ${cartItem
              .hours} hours - ${_formatPrice(
              cartItem.equipment.price * cartItem.quantity * cartItem.hours)}"
      );
      receipt.writeln();
    }
    receipt.writeln(
        "-----------------------------------------------------------------");
    receipt.writeln();
    receipt.writeln("total_equipments".tr + "${getTotalItemCount()}"); // Updated to use translation key
    receipt.writeln("total_price".tr + "${_formatPrice(getTotalPrice())}"); // Updated to use translation key
    receipt.writeln();
    receipt.writeln("delivering_to".tr + "$deliveryAddress"); // Updated to use translation key

    return receipt.toString();
  }

// Format price as currency
  String _formatPrice(double price) {
    return "\₹${price.toStringAsFixed(2)}"; // Format price to Indian Rupees
  }
}
