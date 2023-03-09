import 'package:get/get.dart';

import '../controllers/quotation_controller.dart';

class QuotationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuotationController>(
      () => QuotationController(),
    );
  }
}
