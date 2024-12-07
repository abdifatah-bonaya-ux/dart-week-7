import 'package:flutter/material.dart';

class SendMoneyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const SendMoneyButton({
    Key? key,
    required this.onPressed,
    this.text = 'Send Money',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          elevation: 5,
        ),
        child: Text(text),
      ),
    );
  }
}