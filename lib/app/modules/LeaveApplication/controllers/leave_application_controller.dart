import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LeaveApplicationController extends GetxController {
  var leaveType = "".obs;
  var fromDate = "18-02-2023".obs;
  var toDate = "18-02-2023".obs;
  var about = "about".obs;
  var status = "pending".obs;

  TextEditingController reasonTextController = TextEditingController();
  RxList leaveTypeList = ["Casual", "Sick"].obs;

  @override
  void onInit() {
    super.onInit();
    requestPermission();
  }

  Future<void> requestPermission() async {
    FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
    NotificationSettings notificationSettings =
        await firebaseMessaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
      sound: true,
    );
    if (notificationSettings.authorizationStatus ==
        AuthorizationStatus.authorized) {
      print("Permission granted");
    }
    if (notificationSettings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print("Provisional Auth granted");
    }
    if (notificationSettings.authorizationStatus ==
        AuthorizationStatus.denied) {
      print("Authentication not granted");
    }
  }
}