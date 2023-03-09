import 'package:business_cpu/app/data/constants.dart';
import 'package:business_cpu/app/data/widgets.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/task_assign_to_me_controller.dart';

class TaskAssignToMeView extends GetView<TaskAssignToMeController> {
  TaskAssignToMeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TaskAssignToMeController());
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => TaskStatus(
              onPendingTap: () {
                controller.isSelectedTaskStatus.value = 1;
              },
              onCompletedTap: () {
                controller.isSelectedTaskStatus.value = 2;
              },
              onDeletedTap: () {
                controller.isSelectedTaskStatus.value = 3;
              },
              onPendingColor: (controller.isSelectedTaskStatus.value == 1)
                  ? Constants.primaryColor
                  : Colors.grey,
              onCompletedColor: (controller.isSelectedTaskStatus.value == 2)
                  ? Constants.primaryColor
                  : Colors.grey,
              onDeletedColor: (controller.isSelectedTaskStatus.value == 3)
                  ? Constants.primaryColor
                  : Colors.grey,
            ),
          ),
          Obx(
            () => Expanded(
              child: Column(
                children: [
                  if (controller.isSelectedTaskStatus.value == 1) ...[
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: Constants.height / 15,
                              width: Constants.width,
                              color: Colors.red,
                            ),
                          );
                        },
                      ),
                    )
                  ] else if (controller.isSelectedTaskStatus.value == 2) ...[
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: Constants.height / 15,
                              width: Constants.width,
                              color: Colors.black,
                            ),
                          );
                        },
                      ),
                    )
                  ] else ...[
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: Constants.height / 15,
                              width: Constants.width,
                              color: Colors.amberAccent,
                            ),
                          );
                        },
                      ),
                    )
                  ]
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AlertDialog alert = AlertDialog(
            titlePadding: EdgeInsets.zero,
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Task Description"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Color(0XFFF9F9F9),
                    child: TextFormField(
                      maxLines: 5,
                      minLines: 1,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        isDense: true,
                        hintText: "Add Details",
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Assign To "),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 35,
                    child: DropdownButtonFormField(
                      icon: Icon(Icons.arrow_drop_down_circle_outlined),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10, right: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      items: controller.dropDownStatus.map((selectedType) {
                        return DropdownMenuItem(
                          child: Text(
                            selectedType,
                            style: TextStyle(
                                fontSize: 16, color: Constants.primaryColor),
                          ),
                          value: selectedType,
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        print(newValue);
                        controller.selectedDropDown(newValue);
                        print(controller.selectedDropDown.value);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Text("Due Date"),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 35,
                    child: DateTimePicker(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          border: OutlineInputBorder(borderSide: BorderSide()
                              // borderRadius: BorderRadius.circular(10),
                              )),
                      type: DateTimePickerType.date,
                      dateMask: 'dd-MM-yyyy',
                      initialValue: DateTime.now().toString(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                      icon: Icon(Icons.event),
                      onChanged: (val) => print(val),
                      validator: (val) {
                        print(val);
                        return null;
                      },
                      onSaved: (val) => print(val),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Remarks"),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 35,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Remarks",
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Priority"),
                  Obx(() => RadioListTile(
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity(horizontal: -4 , vertical: -4),
                      title: Text('High'),
                      value: 1,
                      groupValue: controller.selectedValueRadioButton.value,
                      onChanged: (value) {
                        controller.setSelectedRadioButtonValue(value!);
                        print(controller.selectedValueRadioButton.value);
                      })),
                  Obx(() => RadioListTile(
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity(horizontal: -4 , vertical: -4),
                      title: Text('Medium'),
                      value: 2,
                      groupValue: controller.selectedValueRadioButton.value,
                      onChanged: (value) {
                        controller.setSelectedRadioButtonValue(value!);
                        print(controller.selectedValueRadioButton.value);
                      })),
                  Obx(() => RadioListTile(
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity(horizontal: -4 , vertical: -4),
                      title: Text('Low'),
                      value: 3,
                      groupValue: controller.selectedValueRadioButton.value,
                      onChanged: (value) {
                        controller.setSelectedRadioButtonValue(value!);
                        print(controller.selectedValueRadioButton.value);
                      })),

                  Container(
                    width: Constants.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Add"),
                    ),
                  )
                ],
              ),
            ),
          );
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return alert;
              });
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
