import 'package:get/get.dart';

import '../controllers/purchase_reviewed_controller.dart';

class PurchaseReviewedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PurchaseReviewedController>(
      () => PurchaseReviewedController(),
    );
  }
}
