import 'dart:convert';
import 'package:business_cpu/app/modules/Login/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../../../data/constants.dart';
import '../../Accounts/views/accounts_view.dart';
import '../../Announcements/views/announcements_view.dart';
import '../../Chat/views/chat_view.dart';
import '../../Feedback/views/feedback_view.dart';
import '../../Greetings/views/greetings_view.dart';
import '../../Hiring/views/hiring_view.dart';
import '../../Intranet/views/intranet_view.dart';
import '../../Inventory/views/inventory_view.dart';
import '../../LeaveApplication/views/leave_application_view.dart';
import '../../Masters/views/masters_view.dart';
import '../../Purchase/views/purchase_view.dart';
import '../../Settings/views/settings_view.dart';
import '../../dashboard/views/dashboard_view.dart';
import '../../manager_user/views/manager_user_view.dart';
import '../Model/modelGetRoleData.dart';

class SwitchPageController extends GetxController {
  var roleData = <RoleResult>[].obs;
  final String text = "";
  final RxInt currentPages = 0.obs;
  final List getPages = [
    DashboardView(),
    AccountsView(),
    MastersView(),
    GreetingsView(),
    IntranetView(),
    ChatView(),
    InventoryView(),
    PurchaseView(),
    FeedbackView(),
    LeaveApplicationView(),
    AnnouncementsView(),
    ManagerUserView(),
    SettingsView(),
    HiringView()
  ];
  final List<IconData> getIcon = [
    Icons.dashboard,
    Icons.account_circle,
    Icons.book_sharp,
    Icons.card_giftcard,
    Icons.group,
    Icons.chat,
    Icons.inventory,
    Icons.business,
    Icons.feedback,
    Icons.holiday_village,
    Icons.announcement,
    Icons.supervised_user_circle_sharp,
    Icons.settings,
    Icons.broadcast_on_personal_sharp,
  ];
  final List getTitle = [
    "Dashboard",
    "Accounts",
    "Masters",
    "Greetings",
    'Intranet',
    "Chat",
    "Inventory",
    'Purchase',
    "Feedback",
    "Leave Application",
    "Announcements",
    "Manage User",
    "Settings",
    "Hiring"
  ];
  dynamic argumentData = Get.arguments;

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    var token = prefs.get('token');
    var response = await http.post(Uri.parse("${Constants.url}logout"), headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    });
    print(response.statusCode);
    if (response.statusCode == 200) {
      Get.offAll(()=>LoginView());
      print("Logout Successfully");
    }
  }

  Future<List<RoleResult>> getRole(int workspaceId, int userId) async {
    final prefs = await SharedPreferences.getInstance();
    var token = prefs.get('token');
    var response = await http.get(
        Uri.parse("${Constants.url}workspace/role/$userId/$workspaceId"),
        headers: {'Authorization': 'Bearer $token'});
    if (response.statusCode == 200) {
      var data = GetRoleData.fromJson(jsonDecode(response.body));
      print(response.body);
      return data.data?.result ?? [];
    } else {
      throw Exception('Failed to load roles');
    }
  }
  Future<void> getRoleList() async {
    try {
      var roles =
          await getRole(argumentData[0]["work"], argumentData[1]["user"]);
      roleData.value = roles;
    } finally {}
  }

  @override
  void onInit() {
    super.onInit();
    getRoleList();
  }
}