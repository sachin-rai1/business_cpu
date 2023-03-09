import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ViewItemController extends GetxController {
  RxList items = ["Service", "Goods"].obs;
  var selectedDropDown = "".obs;
  RxString maintain = "".obs;
  TextEditingController itemNameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController hsnController = TextEditingController();
  TextEditingController uomController = TextEditingController();
  TextEditingController openingStockController = TextEditingController();
  TextEditingController cgstController = TextEditingController();
  TextEditingController sgstController = TextEditingController();
  TextEditingController reorderLevelController = TextEditingController();
  TextEditingController warningController = TextEditingController();
  Rx<double> igstController = 0.0.obs;

  void igstCalculate() {
    if(cgstController.text == "" && sgstController.text == ""){
      igstController.value = 0.0;
    }
    else if(cgstController.text == "" && sgstController.text != "") {
      igstController.value = double.parse(sgstController.text);
    }
    else if(cgstController.text != "" && sgstController.text == ""){
      igstController.value = double.parse(cgstController.text);
    }
    else {
      igstController.value =
          double.parse(cgstController.text) + double.parse(sgstController.text);
    }
  }
}
