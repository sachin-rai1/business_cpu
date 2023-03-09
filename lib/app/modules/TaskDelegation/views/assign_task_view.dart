import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/constants.dart';
import '../TaskAssignToMe/views/task_assign_to_me_view.dart';
import '../TaskAssignToOthers/views/task_assign_to_others_view.dart';
import '../controllers/assign_task_controller.dart';

class AssignTaskView extends GetView<AssignTaskController> {
   AssignTaskView({Key? key}) : super(key: key);

  final assignTaskController = Get.put(AssignTaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: const Text('AssignTaskView'),
        // leading: Icon(Icons.menu),
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size(10, 60),
          child: ColoredBox(
            color: Colors.white,
            child: TabBar(
              indicatorColor: Colors.deepPurple.shade500,
              labelColor: Colors.black,
              tabs: controller.myTabs,
              controller: controller.tabController,
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: controller.tabController,
        children: [TaskAssignToMeView(), TaskAssignToOthersView()],
      ),
    );
  }
}
