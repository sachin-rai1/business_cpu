import 'package:get/get.dart';

import '../controllers/greetings_controller.dart';

class GreetingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GreetingsController>(
      () => GreetingsController(),
    );
  }
}
