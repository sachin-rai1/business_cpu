import 'package:get/get.dart';

import '../controllers/customer_master_controller.dart';

class CustomerMasterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerMasterController>(
      () => CustomerMasterController(),
    );
  }
}
