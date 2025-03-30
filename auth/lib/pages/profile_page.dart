import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/custom_app_bar.dart';
import '../components/my_drawer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Future<Map<String, dynamic>?> _getUserData() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      DocumentSnapshot userDoc = await FirebaseFirestore.instance.collection('users').doc(user.email).get();
      return userDoc.data() as Map<String, dynamic>?;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'profile'.tr),
      drawer: const MyDrawer(),
      body: FutureBuilder<Map<String, dynamic>?>( // FutureBuilder to get user data
        future: _getUserData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return const Center(child: Text('Error fetching user data'));
          }
          if (!snapshot.hasData || snapshot.data == null) {
            return const Center(child: Text('No user data found'));
          }

          var userData = snapshot.data!;
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    title: Text(
                      '${'name_label'.tr}: ${userData['username']}',
                      style: const TextStyle(fontSize: 24,
                        color: Colors.black,),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    title: Text(
                      '${'email_label'.tr}: ${userData['email']}',
                      style: const TextStyle(fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    title: Text(
                      '${'phone_label'.tr}: ${userData['phone']}', // Display phone number
                      style: const TextStyle(fontSize: 24,
                        color: Colors.black,),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
