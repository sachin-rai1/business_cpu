import 'package:get/get.dart';

import '../controllers/lead_controller.dart';

class LeadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LeadController>(
      () => LeadController(),
    );
  }
}
