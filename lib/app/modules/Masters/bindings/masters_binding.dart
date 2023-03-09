import 'package:get/get.dart';

import '../controllers/masters_controller.dart';

class MastersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MastersController>(
      () => MastersController(),
    );
  }
}
