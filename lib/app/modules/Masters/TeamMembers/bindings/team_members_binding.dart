import 'package:get/get.dart';

import '../controllers/team_members_controller.dart';

class TeamMembersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TeamMembersController>(
      () => TeamMembersController(),
    );
  }
}
