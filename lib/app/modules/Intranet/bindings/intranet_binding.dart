import 'package:get/get.dart';

import '../controllers/intranet_controller.dart';

class IntranetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntranetController>(
      () => IntranetController(),
    );
  }
}
