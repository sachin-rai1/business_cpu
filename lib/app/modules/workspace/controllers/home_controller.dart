import 'dart:convert';
import 'package:business_cpu/app/data/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../Model/modelGetWorkspace.dart';

class HomeController extends GetxController {


  dynamic data;
  final nameController = TextEditingController();
  final updateNameController = TextEditingController();

  Future<void> addWorkspace(String name) async {
    final prefs = await SharedPreferences.getInstance();
    var token = prefs.get('token');
    var response = await http.post(
        Uri.parse("${Constants.url}workspace/create"),
        headers: {'Authorization': 'Bearer $token'},
        body: {"name": name});
    print("Name is : $name");
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      print(response.body);
      getListWorkspace();
    }
  }

  var workspaceList = <WorkspaceResult>[].obs;

  Future<List<WorkspaceResult>> fetchWorkspace() async {
    final prefs = await SharedPreferences.getInstance();
    var token = prefs.get('token');
    final response =
        await http.get(Uri.parse("${Constants.url}workspace"), headers: {
      'Authorization': 'Bearer $token',
    });
    print(response.statusCode);
    if (response.statusCode == 200) {
      final workspace = GetWorkspace.fromJson(json.decode(response.body));
      return workspace.data?.result ?? [];
    } else {
      throw Exception('Failed to load workspace');
    }
  }

  void getListWorkspace() async {
    try {
      var workspace = await fetchWorkspace();
      workspaceList.value = workspace;
    } finally {
    }
  }

  @override
  void onInit() {
    super.onInit();
    getListWorkspace();
  }

  Future<void> updateWorkspace(String name, int id) async {
    final prefs = await SharedPreferences.getInstance();
    var token = prefs.get('token');
    var response = await http.post(
        Uri.parse("${Constants.url}workspace/update/$id"),
        headers: {'Authorization': 'Bearer $token'},
        body: {"name": name});
    print("Name is : $name");
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      print(response.body);
      getListWorkspace();
    }
  }
}
