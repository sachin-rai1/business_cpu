import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/constants.dart';
import '../controllers/switch_page_controller.dart';

class SwitchPageView extends GetView<SwitchPageController> {
  final switchPageController = Get.put(SwitchPageController());

  SwitchPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Constants.primaryColor),
        title: Obx(() {
          return Text(
            controller.getTitle[controller.currentPages.value],
            style: TextStyle(color: Colors.black),
          );
        }),
      ),
      body: Obx(() => controller.getPages[controller.currentPages.value]),
      drawer: Drawer(
        child: Column(
          // padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
                child: DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                // decoration: BoxDecoration(color: const Color(0xff764abc)),
                accountName: Text(
                  "ABC def",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  "abc.def@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                currentAccountPicture: FlutterLogo(),
              ),
            )),
            Column(children: <Widget>[
              Obx(
                () => ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: controller.roleData.length,
                    itemBuilder: (context, index) {
                      return (controller.roleData[index].id != index + 1)
                          ? Container()
                          : GestureDetector(
                              onTap: () {
                                Get.back();
                                controller.currentPages.value = index;
                              },
                              child: Container(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    SizedBox(width: 25),
                                    Icon(
                                      controller.getIcon[index],
                                      color: Constants.primaryColor,
                                      size: 25,
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      controller.getTitle[index],
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Constants.primaryColor,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            );
                    }),
              )
            ]),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: (){
                    controller.logout();
                  },
                  child: Container(
                    color: Constants.primaryColor,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Logout",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        SizedBox(width: 12),
                        Icon(
                          Icons.output_rounded,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
