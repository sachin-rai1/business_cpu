import 'package:business_cpu/app/data/widgets.dart';
import 'package:business_cpu/app/modules/switch_page/views/switch_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/constants.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Text("Your Workspace"),
        elevation: 0,
      ),
      body: Obx(() {
        return ListView.builder(
            itemCount: controller.workspaceList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  var workspaceId = controller.workspaceList[index].userId;
                  var userId = controller.workspaceList[index].id;
                  print(workspaceId);
                  print(userId);
                  Get.to(() => SwitchPageView(),
                      arguments: [{"work" :workspaceId},{"user" :userId}]);
                },
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            controller.workspaceList[index].name
                                .toString()
                                .toUpperCase(),
                            style: TextStyle(fontSize: 25),
                          ),
                          InkWell(
                              onTap: () {
                                controller.updateNameController.text =
                                    controller.workspaceList[index].name
                                        .toString();
                                updateWorkspace(context,
                                    controller.workspaceList[index].id!);
                              },
                              child: Icon(Icons.edit)),
                        ],
                      ),
                    )),
              );
            });
      }),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          addWorkspace(context);
        },
        icon: Icon(
          Icons.add_circle_outline_outlined,
          size: 30,
        ),
        label: Text("Add Workspace"),
      ),
    );
  }

  void updateWorkspace(context, int id) {
    AlertDialog alertDialog = AlertDialog(
      actions: [
        MaterialButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Cancel")),
        MaterialButton(
          onPressed: () {
            controller.updateWorkspace(
                controller.updateNameController.text, id);
            Get.back();
          },
          child: Text("Update"),
          color: Constants.primaryColor,
        ),
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormWidget(
            textController: controller.updateNameController,
            dropDown: false,
            titleText: 'Workspace Name',
          ),
        ],
      ),
    );
    showDialog(
        context: context,
        builder: (context) {
          return alertDialog;
        });
  }

  void addWorkspace(context) {
    AlertDialog alertDialog = AlertDialog(
      actions: [
        MaterialButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Cancel")),
        MaterialButton(
          onPressed: () {
            controller.addWorkspace(controller.nameController.text);
            print(controller.nameController.text);
            Get.back();
          },
          child: Text("Add"),
          color: Constants.primaryColor,
        ),
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormWidget(
            textController: controller.nameController,
            dropDown: false,
            titleText: 'Workspace Name',
          ),
        ],
      ),
    );
    showDialog(
        context: context,
        builder: (context) {
          return alertDialog;
        });
  }
}
