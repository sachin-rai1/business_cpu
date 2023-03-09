import 'package:feature_discovery/feature_discovery.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

class QuotationController extends GetxController {
  Rx<TextEditingController> quotation_no = TextEditingController().obs;
  Rx<TextEditingController> companyName = TextEditingController().obs;
  Rx<TextEditingController> CGST = TextEditingController().obs;
  Rx<TextEditingController> SGST = TextEditingController().obs;
  Rx<TextEditingController> IGST = TextEditingController().obs;
  Rx<TextEditingController> Price = TextEditingController().obs;
  Rx<TextEditingController> Amount = TextEditingController().obs;
  List<String> fruits = [
    'Apple',
    'Banana',
    'Grapes',
    'Orange',
    'Apple',
    'Banana',
    'Grapes',
    'Orange'
  ].obs;
  List selectedFruits = [].obs;
  final count = 0.obs;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey first = GlobalKey();
  final GlobalKey second = GlobalKey();
  final GlobalKey third = GlobalKey();
  final GlobalKey fourth = GlobalKey();
  final GlobalKey fifth = GlobalKey();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
