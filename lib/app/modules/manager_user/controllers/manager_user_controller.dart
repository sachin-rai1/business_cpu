import 'package:business_cpu/app/data/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ManagerUserController extends GetxController {
  RxString selectedDate = DateTime.now().toString().obs;
  RxList roles = [].obs;
  final emailController = TextEditingController();

  Future<void> addUser(String email, List roles) async {
    final prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');
    var response = await http.post(
        Uri.parse("${Constants.url}workspace/invite/1"),
        headers: {'Authentication': 'Bearer $token'},
        body: {"email": email, "role_id": roles});
    print(response.statusCode);
    if (response.statusCode == 200) {

    }
  }
}
