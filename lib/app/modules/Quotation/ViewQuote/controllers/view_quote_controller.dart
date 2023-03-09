import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ViewQuoteController extends GetxController {
  //TODO: Implement ViewQuoteController
  Rx<TextEditingController> quotation_no = TextEditingController().obs;
  Rx<TextEditingController> companyName = TextEditingController().obs;
  Rx<TextEditingController> CGST = TextEditingController().obs;
  Rx<TextEditingController> SGST = TextEditingController().obs;
  Rx<TextEditingController> IGST = TextEditingController().obs;
  Rx<TextEditingController> Price = TextEditingController().obs;
  Rx<TextEditingController> Amount = TextEditingController().obs;
  RxList items = ["Service", "Goods" , 'Apple', 'Banana', 'Grapes', 'Orange'].obs;
  var selectedDropDown = "".obs;
  final count = 0.obs;
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
