import 'package:get/get.dart';

import '../controllers/assign_task_controller.dart';

class AssignTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AssignTaskController>(
      () => AssignTaskController(),
    );
  }
}
