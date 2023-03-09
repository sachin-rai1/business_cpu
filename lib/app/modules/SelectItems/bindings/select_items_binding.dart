import 'package:get/get.dart';

import '../controllers/select_items_controller.dart';

class SelectItemsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectItemsController>(
      () => SelectItemsController(),
    );
  }
}
