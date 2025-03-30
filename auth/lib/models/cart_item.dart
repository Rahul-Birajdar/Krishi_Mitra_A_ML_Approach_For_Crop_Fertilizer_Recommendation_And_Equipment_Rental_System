import 'package:auth/models/equipment.dart';

class CartItem {
  Equipment equipment;
  int quantity;
  int hours;

  CartItem({
    required this.equipment,
    this.quantity = 1,
    this.hours = 1,
  });

  double get totalPrice {
    return (equipment.price * quantity * hours);
  }
}
