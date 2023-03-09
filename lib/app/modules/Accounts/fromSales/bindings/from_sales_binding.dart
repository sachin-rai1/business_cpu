import 'package:get/get.dart';

import '../controllers/from_sales_controller.dart';

class FromSalesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FromSalesController>(
      () => FromSalesController(),
    );
  }
}
