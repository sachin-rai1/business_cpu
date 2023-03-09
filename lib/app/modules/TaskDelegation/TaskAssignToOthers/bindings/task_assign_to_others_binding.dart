import 'package:business_cpu/app/modules/TaskDelegation/TaskAssignToOthers/controllers/task_assign_to_others_controller.dart';
import 'package:get/get.dart';

class TaskAssignToOthersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskAssignToOthersController>(
      () => TaskAssignToOthersController(),
    );
  }
}
