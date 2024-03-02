import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:promilo_task/Constants/global_variable.dart';

abstract class ApiCall {
  Future<String> fetchApi({required String userName, required String password});
}

class FetchApiData implements ApiCall {
  @override
  Future<String> fetchApi({required String userName, required String password}) async {
    // post request
    try {
      final response = await http.post(Uri.parse(apiEndpoint), body: {
        'username': userName,
        'password': password,
        'grant_type': 'password',
      }, headers: {
        'Authorization': 'Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg=='
      });

      if (response.statusCode == 200) {
        return '';
      } else {
        final data = jsonDecode(response.body);

        final error = data['status']['message'];

        return error.toString();
      }
    } catch (e) {
      return e.toString();
    }
  }
}
