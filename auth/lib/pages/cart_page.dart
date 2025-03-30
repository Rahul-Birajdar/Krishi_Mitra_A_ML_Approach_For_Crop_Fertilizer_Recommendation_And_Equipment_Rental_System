import 'package:flutter/material.dart';
import 'package:auth/components/my_button.dart';
import 'package:auth/components/my_cart_tile.dart';
import 'package:auth/pages/payment_page.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart'; // Import Get for localization
import '../models/rent.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Rent>(
      builder: (context, rent, child) {
        // cart
        final userCart = rent.cart;

        // scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: Text("cart".tr), // Use translation key
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              // clear cart button
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("clear_cart_confirmation".tr), // Use translation key
                      actions: [
                        // cancel button
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("cancel".tr), // Use translation key
                        ),

                        // yes button
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            rent.clearCart();
                          },
                          child: Text("yes".tr), // Use translation key
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
          body: Column(
            children: [
              // list of cart
              Expanded(
                child: Column(
                  children: [
                    // Check if the cart is empty
                    userCart.isEmpty
                        ? Expanded(
                      child: Center(
                        child: Text("cart_empty".tr), // Use translation key
                      ),
                    )
                        : Expanded(
                      child: ListView.builder(
                        itemCount: userCart.length,
                        itemBuilder: (context, index) {
                          // get individual cart item
                          final cartItem = userCart[index];

                          // return cart tile UI
                          return MyCartTile(cartItem: cartItem);
                        },
                      ),
                    ),
                  ],
                ),
              ),

              // button to pay
              MyButton(
                onTap: () {
                  // Validate if the cart is empty
                  if (userCart.isEmpty) {
                    // Show a message if the cart is empty
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("empty_cart_message".tr), // Use translation key
                      ),
                    );
                  } else {
                    // Navigate to the payment page if the cart is not empty
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentPage(),
                      ),
                    );
                  }
                },
                text: "go_to_checkout".tr, // Use translation key
                color: Theme.of(context).colorScheme.primary,
              ),

              const SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
