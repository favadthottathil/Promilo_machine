import 'package:flutter/material.dart';
import 'package:promilo_task/Features/Auth/Services/auth_service.dart';
import 'package:provider/provider.dart';

customCheckBox(BuildContext context) {
  return Consumer<AuthService>(
    builder: (context, provider, child) => Checkbox(
      value: provider.isChecked,
      onChanged: (value) {
        provider.setIsChecked = value!;
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
  );
}
