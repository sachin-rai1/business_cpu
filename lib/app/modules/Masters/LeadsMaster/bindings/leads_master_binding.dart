import 'package:get/get.dart';

import '../controllers/leads_master_controller.dart';

class LeadsMasterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LeadsMasterController>(
      () => LeadsMasterController(),
    );
  }
}
