import 'package:flutter/material.dart';

class CustomSnackBar {
  static showSnackbar(context, String message, Color? color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(
            message,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: color ?? Theme.of(context).colorScheme.primary,
          showCloseIcon: true),
    );
  }
}
