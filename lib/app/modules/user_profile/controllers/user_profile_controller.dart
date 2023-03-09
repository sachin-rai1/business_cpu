import 'package:get/get.dart';

class UserProfileController extends GetxController {
  RxString selectedDate = DateTime.now().toString().obs;
  RxBool isTaskSelected = false.obs;
  RxBool isSalesSelected = false.obs;
  RxBool isManagerSelected = false.obs;
  RxBool isAccountSelected = false.obs;
  RxBool isMasterSelected = false.obs;
  RxBool isGreetingsSelected = false.obs;
  RxBool isIntranetSelected = false.obs;
  RxBool isChatSelected = false.obs;
  RxBool isInventorySelected = false.obs;
  RxBool isFeedbackSelected = false.obs;
  RxBool isProjectSelected = false.obs;
  RxBool isFlowSelected = false.obs;
  RxBool isExpenseSelected = false.obs;
  RxBool isLeaveSelected = false.obs;
  RxBool isHiringSelected = false.obs;
  RxBool isPurchaseSelected = false.obs;
  RxBool isPerformanceSelected = false.obs;
}
