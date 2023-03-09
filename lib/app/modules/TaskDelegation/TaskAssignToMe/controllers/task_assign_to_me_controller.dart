import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskAssignToMeController extends GetxController {
  RxInt isSelectedTaskStatus = 1.obs;

  final List<String> dropDownStatus = [
    'Successful',
    'Waiting for full Response ',
    'Quotati',
    'Required',
    'Cancel',
  ].obs;
  final selectedDropDown = "".obs;

  var selectedValueRadioButton = 1.obs;

  void setSelectedRadioButtonValue(int value) {
    selectedValueRadioButton.value = value;
  }

}
