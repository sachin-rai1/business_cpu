import 'package:get/get.dart';

import '../controllers/view_quote_controller.dart';

class ViewQuoteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewQuoteController>(
      () => ViewQuoteController(),
    );
  }
}
