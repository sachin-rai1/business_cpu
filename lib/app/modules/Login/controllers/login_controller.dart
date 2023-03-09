import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../../data/constants.dart';
import '../../workspace/views/home_view.dart';

class LoginController extends GetxController {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  auth() {
    print("checking data");
    Get.to(() => HomeView());
  }

  dynamic loginData;
  dynamic loginRole;
  dynamic token;

  Future<void> login(email, password) async {
    final prefs = await SharedPreferences.getInstance();
    var response = await http.post(Uri.parse("${Constants.url}login"),
        body: {"email": email, "password": password});
    print(email);
    print(password);
    print(response.statusCode);
    if (response.statusCode == 200) {
      loginData = jsonDecode(response.body);
      token = loginData["data"]["token"];
      print(token);
      await prefs.setString('token', token);
      auth();
    }
  }
}
