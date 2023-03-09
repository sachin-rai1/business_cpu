import 'package:get/get.dart';

import '../controllers/purchase_pending_controller.dart';

class PurchasePendingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PurchasePendingController>(
      () => PurchasePendingController(),
    );
  }
}
