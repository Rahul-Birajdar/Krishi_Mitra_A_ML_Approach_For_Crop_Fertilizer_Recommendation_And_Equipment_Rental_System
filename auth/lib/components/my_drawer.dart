import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  // Logout user
  void logout(BuildContext context) {
    FirebaseAuth.instance.signOut();
    // Optionally navigate to the login page after logout
    Navigator.pushNamedAndRemoveUntil(
        context, '/login_or_register', (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // Drawer header with image
              DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/km.jpg', // Path to your image
                      width: 100, // Adjust the width as needed
                      height: 86, // Adjust the height as needed
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "krishi_mitra".tr,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),

              // Home tile
              _buildDrawerItem(
                context: context,
                icon: Icons.home,
                text: 'home'.tr,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, '/home_page');
                },
              ),
              const SizedBox(height: 20.0),

              // Profile tile
              _buildDrawerItem(
                context: context,
                icon: Icons.person,
                text: 'profile'.tr,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, '/profile_page');
                },
              ),
              const SizedBox(height: 20.0),

              // Weather tile
              _buildDrawerItem(
                context: context,
                icon: Icons.sunny,
                text: 'weather'.tr,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, '/weather_page');
                },
              ),
              const SizedBox(height: 20.0),

              // Home tile
              _buildDrawerItem(
                context: context,
                icon: Icons.agriculture_sharp,
                text: "rentTitle".tr,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, '/rent_page');
                },
              ),
              const SizedBox(height: 20.0),

              // Crop Predictor tile
              _buildDrawerItem(
                context: context,
                icon: Icons.crop,
                text: 'cropPrediction'.tr,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, '/crop_prediction');
                },
              ),
              const SizedBox(height: 20.0),

              // About Us tile
              _buildDrawerItem(
                context: context,
                icon: Icons.info,
                text: 'aboutUs'.tr,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, '/about_us');
                },
              ),
            ],
          ),

          const SizedBox(height: 19.0),

          // Logout tile
          Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
            child: _buildDrawerItem(
              context: context,
              icon: Icons.logout,
              text: 'logout'.tr,
              onTap: () {
                Navigator.pop(context);
                logout(context); // Pass the context to the logout method
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required BuildContext context,
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left:20.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        title: Text(
          text,
          style: const TextStyle(color: Colors.black),
        ),
        onTap: onTap,
      ),
    );
  }
}
