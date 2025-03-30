import 'package:auth/components/my_textfield.dart';
import 'package:auth/helper/helper_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/my_button.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // Form key

  // login method
  void login() async {
    // Validate the form
    if (_formKey.currentState!.validate()) {
      // show loading circle
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
      );

      // try sign in
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );

        // pop loading circle
        if (context.mounted) Navigator.pop(context);

        // Display success message
        displayMessageToUser('login_success'.tr, context); // Success message
        Navigator.pushReplacementNamed(context, '/home_page'); // Adjust the route name as needed

      } on FirebaseAuthException catch (e) {
        // pop loading circle
        if (context.mounted) Navigator.pop(context);
        // display error message to user based on specific error codes
        String errorMessage;
        switch (e.code) {
          case 'user-not-found':
            errorMessage = 'email_not_found'.tr; // User not found message
            break;
          case 'wrong-password':
            errorMessage = 'wrong_password'.tr; // Wrong password message
            break;
          case 'invalid-email':
            errorMessage = 'invalid_email'.tr; // Invalid email format message
            break;
          default:
            errorMessage = 'login_failed'.tr; // General login failed message
            break;
        }
        displayMessageToUser(errorMessage, context); // Display specific error message
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Form( // Use Form widget
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // logo
                  Icon(
                    Icons.person,
                    size: 100,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  const SizedBox(height: 25),

                  // app name
                  Text(
                    'login_title'.tr,
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 25),

                  // email textfield
                  MyTextField(
                    hintText: 'email_label'.tr,
                    obscureText: false,
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'email_required'.tr; // Email is required
                      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return 'invalid_email'.tr; // Invalid email format
                      }
                      return null; // Valid input
                    },
                  ),
                  const SizedBox(height: 10),

                  // password textfield
                  MyTextField(
                    hintText: 'password_label'.tr,
                    obscureText: true,
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'password_required'.tr; // Password is required
                      } else if (value.length < 6) {
                        return 'password_too_short'.tr; // Password too short
                      }
                      return null; // Valid input
                    },
                  ),
                  const SizedBox(height: 10),

                  // forgot password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Implement forgot password functionality
                        },
                        child: Text(
                          'forgot_password'.tr,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),

                  // sign in button
                  MyButton(
                    text: 'login_button'.tr,
                    onTap: login,
                  ),
                  const SizedBox(height: 25),

                  // don't have an account? Register here
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'register_prompt'.tr,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text(
                          'register_here'.tr,
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
