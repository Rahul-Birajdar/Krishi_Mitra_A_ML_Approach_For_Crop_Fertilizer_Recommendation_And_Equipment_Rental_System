import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final Color? color; // Add a color parameter

  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
    this.color, // Make color optional
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color ?? Theme.of(context).colorScheme.primary, // Use the passed color or fallback
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: color == null // Set text color based on button color
                  ? Theme.of(context).colorScheme.onPrimary
                  : Colors.black, // Change text color if button is white
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
