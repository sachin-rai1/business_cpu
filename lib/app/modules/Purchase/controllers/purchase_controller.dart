import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PurchaseController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var clientName = "test".obs;
  var productName = "test".obs;
  var price = 0.obs;
  var qty = 0.obs;
  var status = "test".obs;
  var remarks = "test".obs;

  late TabController tabxController;

  final List<Tab> tabs = <Tab>[
    Tab(
      text: "All Data",
    ),
    Tab(
      text: "Pending",
    ),
    Tab(
      text: "Reviewed",
    )
  ];

  void onInit() {
    tabxController = TabController(length: tabs.length, vsync: this);
  }
}
