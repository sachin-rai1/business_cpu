import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NewSalesController extends GetxController {

  TextEditingController productNameController = TextEditingController();
  TextEditingController qtyController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController remarksController = TextEditingController();
  var clientName = "test".obs;
  var productName = "test".obs;
  var price = 0.obs;
  var discount = 0.obs;
  var qty = 0.obs;
  var status = "test".obs;
  var remarks = "test".obs;
  final List<String> dropDownStatus = [
    'Successful',
    'Waiting for full Response ',
    'Quotati',
    'Required',
    'Cancel',
  ].obs;

  var selectedDropDown = "".obs;
}
