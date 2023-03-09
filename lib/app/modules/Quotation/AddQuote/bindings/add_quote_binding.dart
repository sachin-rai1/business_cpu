import 'package:get/get.dart';

import '../controllers/add_quote_controller.dart';

class AddQuoteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddQuoteController>(
      () => AddQuoteController(),
    );
  }
}
