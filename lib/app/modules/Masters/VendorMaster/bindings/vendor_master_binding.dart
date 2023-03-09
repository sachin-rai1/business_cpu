import 'package:get/get.dart';

import '../controllers/vendor_master_controller.dart';

class VendorMasterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VendorMasterController>(
      () => VendorMasterController(),
    );
  }
}
