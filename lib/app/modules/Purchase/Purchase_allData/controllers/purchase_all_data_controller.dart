import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PurchaseAllDataController extends GetxController {
  var items = 1.obs;
  var clientName = "Wilson Carder".obs;
  var productName = "Product Name".obs;
  var price = 10000.obs;
  var qty = 0.obs;
  var deliveryDate = "test".obs;
  var paymentTerms = "test".obs;
  var remarks = "test".obs;
  final List<String> dropDownStatus = [
    'Successful',
    'Waiting for full Response ',
    'Quotati',
    'Required',
    'Cancel',
  ].obs;
  TextEditingController productNameController = TextEditingController();
  TextEditingController qtyController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController remarksController = TextEditingController();
  TextEditingController paymentTermController = TextEditingController();
  var selectedDropDown = "".obs;
}
