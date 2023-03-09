import 'package:business_cpu/app/data/constants.dart';
import 'package:business_cpu/app/data/widgets.dart';
import 'package:business_cpu/app/modules/manager_user/views/manager_user_view.dart';
import 'package:business_cpu/app/modules/user_profile/views/user_profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/team_members_controller.dart';

class TeamMembersView extends GetView<TeamMembersController> {
  TeamMembersView({Key? key}) : super(key: key);
  final TeamMembersController teamMembersController = Get.put(TeamMembersController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TeamMembersView'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 2),
              child: InkWell(
                onTap: (){
                  Get.to(()=> UserProfileView());
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal:15 ,vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       RowTextWidget(titleText: "Employee Name", subText: "Arun"),
                        RowTextWidget(titleText: "DOB", subText: "DOB"),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => ManagerUserView());
        },
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}
