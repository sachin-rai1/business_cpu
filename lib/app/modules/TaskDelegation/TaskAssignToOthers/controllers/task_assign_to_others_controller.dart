import 'package:get/get.dart';

class TaskAssignToOthersController extends GetxController {

  RxInt isSelectedTaskStatus = 1.obs;
  var selectedValueRadioButton = 0.obs;
  final selectedDropDown = "".obs;
  final List<String> dropDownStatus = [
    'Successful',
    'Waiting for full Response ',
    'Quotati',
    'Required',
    'Cancel',
  ].obs;

  void setSelectedRadioButtonValue(int value) {
    selectedValueRadioButton.value = value;
  }
}
