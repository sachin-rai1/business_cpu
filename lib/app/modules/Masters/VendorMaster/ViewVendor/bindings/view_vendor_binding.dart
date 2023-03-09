import 'package:get/get.dart';

import '../controllers/view_vendor_controller.dart';

class ViewVendorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewVendorController>(
      () => ViewVendorController(),
    );
  }
}
