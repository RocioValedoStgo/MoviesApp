import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:movies_app/src/model/user.dart';
import 'package:http/http.dart' as http;

class AuthService {
  // String _apiKey = 'b317405e8ca90004565d0fc5ce77d48b';
  String _url = 'api.themoviedb.org';

  Future<void> login(BuildContext context,
      {@required Map<String, dynamic> params}) async {
    Map<String, dynamic> request = {
      "username": params['username'],
      "password": params['password'],
      "request_token": params['request_token']
    };
    var uri = Uri.https(
        _url, '/3/authentication/token/validate_with_login?', request);
    final response = await http.post(uri);
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      User user = User.fromJson(jsonResponse['data']);
      print(user.requestToken);
    } else {
      print('Error');
    }
  }
}
