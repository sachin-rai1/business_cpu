import 'package:get/get.dart';

import '../controllers/new_sales_controller.dart';

class NewSalesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewSalesController>(
      () => NewSalesController(),
    );
  }
}
