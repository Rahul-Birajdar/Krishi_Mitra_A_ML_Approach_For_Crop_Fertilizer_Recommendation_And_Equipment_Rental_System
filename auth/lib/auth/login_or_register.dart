import 'package:flutter/material.dart';
import '../components/custom_app_bar.dart';
import '../pages/login_page.dart';
import '../pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  // Initially show the login page
  bool showLoginPage = true;

  // Toggle between login and register pages
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: showLoginPage ? "Login" : "Register",
      ),
      body: showLoginPage
          ? LoginPage(onTap: togglePages)
          : RegisterPage(onTap: togglePages),
    );
  }
}
