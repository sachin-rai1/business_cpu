import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountsController extends GetxController  with GetSingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'From Sales'),
    Tab(text: 'New Sales'),
  ];
  late TabController tabController;
  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: myTabs.length);
  }
  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
