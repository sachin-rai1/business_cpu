import 'package:business_cpu/app/data/constants.dart';
import 'package:business_cpu/app/modules/switch_page/controllers/switch_page_controller.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/widgets.dart';
import '../controllers/manager_user_controller.dart';

class ManagerUserView extends StatefulWidget {
  ManagerUserView({Key? key}) : super(key: key);

  @override
  State<ManagerUserView> createState() => _ManagerUserViewState();
}

class _ManagerUserViewState extends State<ManagerUserView> {
  final managerUserController = Get.put(ManagerUserController());
  SwitchPageController switchPageController = Get.put(SwitchPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add User'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              userForm(context),
              Text(
                "Role Assigned to User",
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
          hintText: "Enter Name",
        ),
        TextFormWidget(
          dropDown: false,
          titleText: "Email Id",
          hintText: "Enter Email ID",
        ),
        TextFormWidget(
          dropDown: false,
          titleText: "Contact No",
          hintText: "Enter Contact No",
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
                hintText: managerUserController.selectedDate.value,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            firstDate: DateTime(1900),
            type: DateTimePickerType.date,
            lastDate: DateTime(2100),
            dateMask: "dd-MM-yyyy",
            initialValue: managerUserController.selectedDate.value,
            onChanged: (value) {
              print(value);
              managerUserController.selectedDate.value = value;
              print(managerUserController.selectedDate.value);
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormWidget(
          dropDown: false,
          titleText: "New Password",
          hintText: "Enter New Password",
        ),
        TextFormWidget(
          dropDown: false,
          titleText: "Confirm New Password",
          hintText: "Enter Confirm New Password",
        ),
      ],
    );
  }

  Widget userPermission(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 15),
              child: GridView.builder(
                  itemCount: switchPageController.roleData.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 10,
                      mainAxisSpacing: 25),
                  itemBuilder: (context, index) {
                    var checked = false.obs;
                    return MyCheckBox(
                      title:
                          switchPageController.roleData[index].name.toString(),
                      onTap: () {
                        checked.value = !checked.value;
                        if (checked.value == true) {
                          print(switchPageController.roleData[index].id);
                          managerUserController.roles
                              .add(switchPageController.roleData[index].id!);
                          print(managerUserController.roles);
                        } else {
                          managerUserController.roles
                              .remove(switchPageController.roleData[index].id!);
                          print(managerUserController.roles);
                        }
                      },
                      onChanged: (value) {
                        checked.value = !checked.value;
                        if (checked.value == true) {
                          print(switchPageController.roleData[index].id);
                          managerUserController.roles
                              .add(switchPageController.roleData[index].id!);
                          print(managerUserController.roles);
                        } else {
                          managerUserController.roles
                              .remove(switchPageController.roleData[index].id!);
                          print(managerUserController.roles);
                        }
                      },
                      value: checked,
                    );
                  }),
            ),
            SizedBox(
              width: Constants.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () {
                  managerUserController.roles.clear();
                  print(managerUserController.roles);
                  setState(() {});
                },
                child: Text("Add User"),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ],
        ));
  }
}
