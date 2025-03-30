import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:auth/components/my_button.dart';
import 'delivery_progress_page.dart';
import 'package:get/get.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("confirm_payment".tr, style: const TextStyle(color: Colors.black)),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("card number: $cardNumber", style: const TextStyle(color: Colors.black)),
                Text("expiry date: $expiryDate", style: const TextStyle(color: Colors.black)),
                Text("cardholder name: $cardHolderName", style: const TextStyle(color: Colors.black)),
                Text("cvv: $cvvCode", style: const TextStyle(color: Colors.black)),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("cancel".tr, style: const TextStyle(color: Colors.black)),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DeliveryProgressPage(),
                  ),
                );
              },
              child: Text("yes".tr, style: const TextStyle(color: Colors.black)),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("checkout".tr, style: const TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              onCreditCardWidgetChange: (p0) {},
            ),
            Theme(
              data: ThemeData(
                inputDecorationTheme: const InputDecorationTheme(
                  labelStyle: TextStyle(color: Colors.black),
                  hintStyle: TextStyle(color: Colors.black),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                ),
                textSelectionTheme: const TextSelectionThemeData(
                  cursorColor: Colors.black,
                  selectionColor: Colors.grey,
                  selectionHandleColor: Colors.black,
                ),
                textTheme: const TextTheme(
                  bodyMedium: TextStyle(color: Colors.black),
                ),
              ),
              child: CreditCardForm(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                onCreditCardModelChange: (data) {
                  setState(() {
                    cardNumber = data.cardNumber;
                    expiryDate = data.expiryDate;
                    cardHolderName = data.cardHolderName;
                    cvvCode = data.cvvCode;
                  });
                },
                formKey: formKey,
              ),
            ),
            const SizedBox(height: 20),
            MyButton(
              text: "pay_now".tr,
              onTap: userTappedPay,
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}