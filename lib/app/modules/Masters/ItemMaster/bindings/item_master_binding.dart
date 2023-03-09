import 'package:get/get.dart';

import '../controllers/item_master_controller.dart';

class ItemMasterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemMasterController>(
      () => ItemMasterController(),
    );
  }
}
