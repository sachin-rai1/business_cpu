import 'package:get/get.dart';

import '../controllers/hiring_controller.dart';

class HiringBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HiringController>(
      () => HiringController(),
    );
  }
}
