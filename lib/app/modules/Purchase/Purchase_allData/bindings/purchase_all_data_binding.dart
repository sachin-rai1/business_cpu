import 'package:get/get.dart';

import '../controllers/purchase_all_data_controller.dart';

class PurchaseAllDataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PurchaseAllDataController>(
      () => PurchaseAllDataController(),
    );
  }
}
