import 'dart:convert';

import 'package:crypto/crypto.dart';

String convertToSha256(String text) {
  var bytes = utf8.encode(text);
  var digest = sha256.convert(bytes);
  return digest.toString();
}
