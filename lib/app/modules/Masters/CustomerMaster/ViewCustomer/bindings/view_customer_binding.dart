import 'package:get/get.dart';

import '../controllers/view_customer_controller.dart';

class ViewCustomerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewCustomerController>(
      () => ViewCustomerController(),
    );
  }
}
