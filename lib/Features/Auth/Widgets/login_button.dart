import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.allFieldFilled,
    required this.emailController,
    required this.formKey,
    required this.passController,
    required this.context, required this.onpress,
  });

  final bool allFieldFilled;
  final TextEditingController emailController;
  final GlobalKey<FormState> formKey;
  final TextEditingController passController;
  final BuildContext context;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: allFieldFilled ? Colors.black : Colors.grey,
        fixedSize: const Size(double.maxFinite, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onpress,
      child: const Text(
        'Submit',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
