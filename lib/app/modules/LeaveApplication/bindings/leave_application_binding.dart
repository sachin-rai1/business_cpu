import 'package:get/get.dart';

import '../controllers/leave_application_controller.dart';

class LeaveApplicationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LeaveApplicationController>(
      () => LeaveApplicationController(),
    );
  }
}
