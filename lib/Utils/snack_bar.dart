import 'package:flutter/material.dart';

showCustomSnackBar(BuildContext context, String content) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
      backgroundColor: Colors.black,
      behavior: SnackBarBehavior.floating,
      
    ),
  );
}
