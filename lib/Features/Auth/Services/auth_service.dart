import 'package:flutter/material.dart';
import 'package:promilo_task/Features/Auth/Services/api_service.dart';
import 'package:promilo_task/Features/Auth/Utilties/utilities.dart';
import 'package:promilo_task/Utils/convert_sha256.dart';

class AuthService extends ChangeNotifier {
  bool isChecked = false;

  bool isLoading = false;

  set setIsChecked(bool value) {
    isChecked = value;
    notifyListeners();
  }

  set setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  loginUser({
    required bool allFieldFilled,
    required String email,
    required GlobalKey<FormState> formKey,
    required String password,
    required VoidCallback onSuccess,
    required Function(String) onError,
  }) async {
    if (allFieldFilled) {
      if (isEmail(email)) {
        if (formKey.currentState!.validate()) {
          final res = await fetchApi(
              userName: email,
              password: convertToSha256(
                password,
              ));

          if (res.isEmpty) {
            onSuccess();
          } else {
            onError(res);
          }
        }
      } else {
        onError('Enter Valid Email');
      }
    }
  }

  Future<String> fetchApi({
    required String userName,
    required String password,
  }) async {
    try {
      return await FetchApiData().fetchApi(
        userName: userName,
        password: password,
      );
    } catch (e) {
      return e.toString();
    }
  }
}
