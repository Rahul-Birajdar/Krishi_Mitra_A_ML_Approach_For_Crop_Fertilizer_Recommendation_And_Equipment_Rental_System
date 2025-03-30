import 'package:auth/models/rent.dart';
import 'package:auth/services/firestore.dart';
import 'package:flutter/material.dart';
import 'package:auth/components/my_receipt.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';  // Import for FirebaseAuth

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {

  // Get access to Firestore service
  FirestoreService db = FirestoreService();

  @override
  void initState() {
    super.initState();

    // Fetch the receipt from Rent model
    String receipt = context.read<Rent>().displayCartReceipt();

    // Fetch the current user's email from FirebaseAuth
    final User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      String userEmail = user.email!;

      // Submit the order to Firestore with the email as document ID
      db.saveRentToDatabase(receipt, userEmail);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: const Column(
        children: [
          MyReceipt(),
        ],
      ),
    );
  }

  // Custom Bottom NavBar - Message / Call delivery driver
  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      padding: const EdgeInsets.all(25.0),
      child: Row(
        children: [
          // Profile pic of driver
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person,
              color: Colors.black,),
            ),
          ),

          const SizedBox(width: 10),

          // Partner details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ABC",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Text(
                "Partner",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ],
          ),
          const Spacer(),

          Row(
            children: [
              // Message button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.message),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              // Call button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.call),
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
