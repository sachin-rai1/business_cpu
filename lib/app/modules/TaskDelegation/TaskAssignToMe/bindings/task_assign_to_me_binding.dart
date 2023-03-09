import 'package:business_cpu/app/modules/TaskDelegation/TaskAssignToMe/controllers/task_assign_to_me_controller.dart';
import 'package:get/get.dart';

class TaskAssignToMeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskAssignToMeController>(
      () => TaskAssignToMeController(),
    );
  }
}
