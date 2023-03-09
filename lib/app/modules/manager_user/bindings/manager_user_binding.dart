import 'package:get/get.dart';

import '../controllers/manager_user_controller.dart';

class ManagerUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ManagerUserController>(
      () => ManagerUserController(),
    );
  }
}
