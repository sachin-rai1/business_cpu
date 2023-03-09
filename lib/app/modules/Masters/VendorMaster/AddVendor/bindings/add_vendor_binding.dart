import 'package:get/get.dart';

import '../controllers/add_vendor_controller.dart';

class AddVendorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddVendorController>(
      () => AddVendorController(),
    );
  }
}
