import 'package:auth/components/my_textfield.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/my_button.dart';
import '../helper/helper_functions.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Text controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPwController = TextEditingController();
  final TextEditingController phoneController = TextEditingController(); // Phone number controller

  // Global key for form validation
  final _formKey = GlobalKey<FormState>();

  // Register method
  Future<void> registerUser() async {
    // Validate the form
    if (!_formKey.currentState!.validate()) {
      return; // Stop if the form is not valid
    }

    // Show loading circle
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    // Ensure passwords match
    if (passwordController.text != confirmPwController.text) {
      // Pop loading circle
      if (mounted) Navigator.pop(context);

      // Show error message to user
      displayMessageToUser("Passwords don't match!", context);
      return;
    }

    try {
      // Create the user
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      // Create a user document and save to Firestore
      await createUserDocument(userCredential);

      // Pop loading circle and navigate to home
      if (mounted) {
        Navigator.pop(context); // Pop the loading circle
        Navigator.pushReplacementNamed(context, '/home_page'); // Adjust the route name as needed
      }
    } on FirebaseAuthException catch (e) {
      // Pop loading circle and display error message to user
      if (mounted) {
        Navigator.pop(context); // Dismiss the loading dialog
        displayMessageToUser(e.message ?? "An error occurred", context);
      }
    } catch (e) {
      // Handle unexpected errors
      if (mounted) {
        Navigator.pop(context); // Dismiss the loading dialog
        displayMessageToUser("An unexpected error occurred", context);
      }
    }
  }

  // Create a user document and save to Firestore
  Future<void> createUserDocument(UserCredential userCredential) async {
    if (userCredential.user != null) {
      await FirebaseFirestore.instance
          .collection("users")
          .doc(userCredential.user!.email)
          .set({
        'email': userCredential.user!.email,
        'username': usernameController.text,
        'phone': phoneController.text, // Save phone number to Firestore
      });
    }
  }

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPwController.dispose();
    phoneController.dispose(); // Dispose phone number controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Form(  // Wrap with Form widget
              key: _formKey,  // Assign the global key
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo
                  Icon(
                    Icons.person,
                    size: 100,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  const SizedBox(height: 25),

                  // App name (use translation key)
                  Text(
                    'register_title'.tr,
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 25),

                  // Username textfield
                  MyTextField(
                    hintText: 'username_label'.tr,
                    obscureText: false,
                    controller: usernameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'username_required'.tr; // Add translation for this key
                      }
                      return null; // Return null if the input is valid
                    },
                  ),
                  const SizedBox(height: 10),

                  // Email textfield
                  MyTextField(
                    hintText: 'email_label'.tr,
                    obscureText: false,
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'email_required'.tr; // Translation for required email
                      } else if (!GetUtils.isEmail(value)) {
                        return 'invalid_email'.tr; // Translation for invalid email
                      }
                      return null; // Return null if the input is valid
                    },
                  ),
                  const SizedBox(height: 10),

                  // Phone number textfield
                  MyTextField(
                    hintText: 'phone_label'.tr, // Add translation key for phone label
                    obscureText: false,
                    controller: phoneController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'phone_required'.tr; // Translation for required phone
                      } else if (!RegExp(r'^(?:[789]\d{9})$').hasMatch(value)) { // Validating Indian phone number format
                        return 'invalid_phone'.tr; // Translation for invalid phone
                      }
                      return null; // Return null if the input is valid
                    },
                  ),

                  const SizedBox(height: 10),

                  // Password textfield
                  MyTextField(
                    hintText: 'password_label'.tr,
                    obscureText: true,
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'password_required'.tr; // Translation for required password
                      } else if (value.length < 6) {
                        return 'password_too_short'.tr; // Translation for short password
                      }
                      return null; // Return null if the input is valid
                    },
                  ),
                  const SizedBox(height: 10),

                  // Confirm password textfield
                  MyTextField(
                    hintText: 'confirm_password_label'.tr,
                    obscureText: true,
                    controller: confirmPwController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'confirm_password_required'.tr; // Translation for required confirm password
                      } else if (value != passwordController.text) {
                        return 'passwords_do_not_match'.tr; // Translation for passwords not matching
                      }
                      return null; // Return null if the input is valid
                    },
                  ),
                  const SizedBox(height: 10),

                  // Register button
                  MyButton(
                    text: 'register_button'.tr,
                    onTap: registerUser,
                  ),
                  const SizedBox(height: 25),

                  // Already have an account? Login here
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'login_prompt'.tr,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text(
                          'login_here'.tr,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
