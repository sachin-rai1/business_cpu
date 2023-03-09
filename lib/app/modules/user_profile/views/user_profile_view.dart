import 'package:business_cpu/app/data/widgets.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_profile_controller.dart';

class UserProfileView extends GetView<UserProfileController> {
  UserProfileView({Key? key}) : super(key: key);
  final UserProfileController userProfileController =   Get.put(UserProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserProfileView'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              userForm(context),
              Text(
                "Role Assigned to Me",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              userPermission(context),
            ],
          ),
        ),
      ),
    );
  }
  Widget userForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Text(
            "User Details",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
        TextFormWidget(
          dropDown: false,
          titleText: "Name",

        ),
        TextFormWidget(
          dropDown: false,
          titleText: "Email Id",
        ),
        TextFormWidget(
          dropDown: false,
          titleText: "Contact No",

        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            "DOB",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          color: Colors.grey.shade100,
          height: 45,
          child: DateTimePicker(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10),
                hintText: controller.selectedDate.value,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            firstDate: DateTime(1900),
            type: DateTimePickerType.date,
            lastDate: DateTime(2100),
            dateMask: "dd-MM-yyyy",
            initialValue: controller.selectedDate.value,
            onChanged: (value) {
              print(value);
              controller.selectedDate.value = value;
              print(controller.selectedDate.value);
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormWidget(
          dropDown: false,
          titleText: "New Password",
        ),
        TextFormWidget(
          dropDown: false,
          titleText: "Confirm New Password",
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
            ),
            onPressed: () {},
            child: Text("Update Profile"),
          ),
        ),
      ],
    );
  }
  Widget userPermission(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyCheckBox(
                    title: "Task Delegation",
                    onTap: () {
                      controller.isTaskSelected.value =
                          !controller.isTaskSelected.value;
                      print(controller.isTaskSelected.value);
                    },
                    onChanged: (value) {
                      controller.isTaskSelected.value =
                          !controller.isTaskSelected.value;
                      print(value);
                    },
                    value: controller.isTaskSelected,
                  ),
                  MyCheckBox(
                    title: "Sales",
                    onTap: () {
                      controller.isSalesSelected.value =
                      !controller.isSalesSelected.value;
                      print(controller.isSalesSelected.value);
                    },
                    onChanged: (value) {
                      controller.isSalesSelected.value =
                      !controller.isSalesSelected.value;
                      print(value);
                    },
                    value: controller.isSalesSelected,
                  ),
                  MyCheckBox(
                    title: "Accounts",
                    onTap: () {
                      controller.isAccountSelected.value =
                      !controller.isAccountSelected.value;
                      print(controller.isAccountSelected.value);
                    },
                    onChanged: (value) {
                      controller.isAccountSelected.value =
                      !controller.isAccountSelected.value;
                      print(value);
                    },
                    value: controller.isAccountSelected,
                  ),
                  MyCheckBox(
                    title: "Manager",
                    onTap: () {
                      controller.isManagerSelected.value =
                      !controller.isManagerSelected.value;
                      print(controller.isManagerSelected.value);
                    },
                    onChanged: (value) {
                      controller.isManagerSelected.value =
                      !controller.isManagerSelected.value;
                      print(value);
                    },
                    value: controller.isManagerSelected,
                  ),
                  MyCheckBox(
                    title: "Purchase",
                    onTap: () {
                      controller.isPurchaseSelected.value =
                      !controller.isPurchaseSelected.value;
                      print(controller.isPurchaseSelected.value);
                    },
                    onChanged: (value) {
                      controller.isPurchaseSelected.value =
                      !controller.isPurchaseSelected.value;
                      print(value);
                    },
                    value: controller.isPurchaseSelected,
                  ),
                  MyCheckBox(
                    title: "Master",
                    onTap: () {
                      controller.isMasterSelected.value =
                      !controller.isMasterSelected.value;
                      print(controller.isMasterSelected.value);
                    },
                    onChanged: (value) {
                      controller.isMasterSelected.value =
                      !controller.isMasterSelected.value;
                      print(value);
                    },
                    value: controller.isMasterSelected,
                  ),
                  MyCheckBox(
                    title: "Greetings/BroadCast",
                    onTap: () {
                      controller.isGreetingsSelected.value =
                      !controller.isGreetingsSelected.value;
                      print(controller.isGreetingsSelected.value);
                    },
                    onChanged: (value) {
                      controller.isGreetingsSelected.value =
                      !controller.isGreetingsSelected.value;
                      print(value);
                    },
                    value: controller.isGreetingsSelected,
                  ),
                  MyCheckBox(
                    title: "Intranet",
                    onTap: () {
                      controller.isIntranetSelected.value =
                      !controller.isIntranetSelected.value;
                      print(controller.isIntranetSelected.value);
                    },
                    onChanged: (value) {
                      controller.isIntranetSelected.value =
                      !controller.isIntranetSelected.value;
                      print(value);
                    },
                    value: controller.isIntranetSelected,
                  ),
                  MyCheckBox(
                    title: "Chat",
                    onTap: () {
                      controller.isChatSelected.value =
                      !controller.isChatSelected.value;
                      print(controller.isChatSelected.value);
                    },
                    onChanged: (value) {
                      controller.isChatSelected.value =
                      !controller.isChatSelected.value;
                      print(value);
                    },
                    value: controller.isChatSelected,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyCheckBox(
                    title: "Inventory",
                    onTap: () {
                      controller.isInventorySelected.value =
                      !controller.isInventorySelected.value;
                      print(controller.isInventorySelected.value);
                    },
                    onChanged: (value) {
                      controller.isInventorySelected.value =
                      !controller.isInventorySelected.value;
                      print(value);
                    },
                    value: controller.isInventorySelected,
                  ),
                  MyCheckBox(
                    title: "Project Management Tool",
                    onTap: () {
                      controller.isProjectSelected.value =
                      !controller.isProjectSelected.value;
                      print(controller.isProjectSelected.value);
                    },
                    onChanged: (value) {
                      controller.isProjectSelected.value =
                      !controller.isProjectSelected.value;
                      print(value);
                    },
                    value: controller.isProjectSelected,
                  ),
                  MyCheckBox(
                    title: "Flow Management Tool",
                    onTap: () {
                      controller.isFlowSelected.value =
                      !controller.isFlowSelected.value;
                      print(controller.isFlowSelected.value);
                    },
                    onChanged: (value) {
                      controller.isFlowSelected.value =
                      !controller.isFlowSelected.value;
                      print(value);
                    },
                    value: controller.isFlowSelected,
                  ),
                  MyCheckBox(
                    title: "Purchase Approval",
                    onTap: () {
                      controller.isExpenseSelected.value =
                      !controller.isExpenseSelected.value;
                      print(controller.isExpenseSelected.value);
                    },
                    onChanged: (value) {
                      controller.isExpenseSelected.value =
                      !controller.isExpenseSelected.value;
                      print(value);
                    },
                    value: controller.isExpenseSelected,
                  ),
                  MyCheckBox(
                    title: "Leave Approval",
                    onTap: () {
                      controller.isLeaveSelected.value =
                      !controller.isLeaveSelected.value;
                      print(controller.isLeaveSelected.value);
                    },
                    onChanged: (value) {
                      controller.isLeaveSelected.value =
                      !controller.isLeaveSelected.value;
                      print(value);
                    },
                    value: controller.isLeaveSelected,
                  ),
                  MyCheckBox(
                    title: "Hiring Tracker",
                    onTap: () {
                      controller.isHiringSelected.value =
                      !controller.isHiringSelected.value;
                      print(controller.isHiringSelected.value);
                    },
                    onChanged: (value) {
                      controller.isHiringSelected.value =
                      !controller.isHiringSelected.value;
                      print(value);
                    },
                    value: controller.isHiringSelected,
                  ),
                  MyCheckBox(
                    title: "Feedback Repository",
                    onTap: () {
                      controller.isFeedbackSelected.value =
                      !controller.isFeedbackSelected.value;
                      print(controller.isFeedbackSelected.value);
                    },
                    onChanged: (value) {
                      controller.isFeedbackSelected.value =
                      !controller.isFeedbackSelected.value;
                      print(value);
                    },
                    value: controller.isFeedbackSelected,
                  ),
                  MyCheckBox(
                    title: "Performance Tracking",
                    onTap: () {
                      controller.isPerformanceSelected.value =
                      !controller.isPerformanceSelected.value;
                      print(controller.isPerformanceSelected.value);
                    },
                    onChanged: (value) {
                      controller.isPerformanceSelected.value =
                      !controller.isPerformanceSelected.value;
                      print(value);
                    },
                    value: controller.isPerformanceSelected,
                  ),
                ],
              ),
            ]));
  }
}