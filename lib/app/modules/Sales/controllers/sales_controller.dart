import 'package:get/get.dart';

class SalesController extends GetxController {
var companyPercent = 0.20;
var personalPercent = 0.60;

final List<String> dropDownStatus = [
  'Successful',
  'Waiting for full Response ',
  'Quotati',
  'Required',
  'Cancel',
].obs;
final selectedDropDown = "".obs;
}
