import 'package:get/get.dart';

import '../controllers/view_item_controller.dart';

class ViewItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewItemController>(
      () => ViewItemController(),
    );
  }
}
