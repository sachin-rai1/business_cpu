import 'package:get/get.dart';

import '../controllers/switch_page_controller.dart';

class SwitchPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SwitchPageController>(
      () => SwitchPageController(),
    );
  }
}
