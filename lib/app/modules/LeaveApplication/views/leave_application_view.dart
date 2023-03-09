import 'package:business_cpu/app/data/constants.dart';
import 'package:business_cpu/app/data/widgets.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/leave_application_controller.dart';

class LeaveApplicationView extends GetView<LeaveApplicationController> {
  LeaveApplicationView({Key? key}) : super(key: key);

  LeaveApplicationController leaveApplicationController =
      Get.put(LeaveApplicationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('LeaveApplicationView'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(itemBuilder: (BuildContext context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            color: Constants.thirdColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  RowTextWidget(
                      titleText: "Leave Type",
                      subText: controller.leaveType.value),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RowTextWidget(
                          titleText: "From Date  ",
                          subText: controller.fromDate.value),
                      RowTextWidget(
                          titleText: "To Date  ",
                          subText: controller.toDate.value),
                    ],
                  ),
                  RowTextWidget(titleText: "About", subText: "subText"),
                  RowTextWidget(titleText: "Leave Status ", subText: "subText"),
                ],
              ),
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _applyLeave(context);
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }

  void _applyLeave(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      actionsPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormWidget(
            dropDownHeight: 35,
            dropDown: true,
            titleText: "Leave Type",
            dropDownOnChanged: (newValue){
              controller.leaveType.value = newValue.toString();
            },
            dropDownItems: controller.leaveTypeList.map((selectedType) {
              return DropdownMenuItem(
                  value: selectedType, child: Text(selectedType));
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("From Date"),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 35,
                      width: Constants.width / 3.5,
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
                          controller.fromDate.value = val.toString();
                        },
                        onSaved: (val) => print(val),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("To Date"),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 35,
                    width: Constants.width / 3.5,
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
                        controller.toDate.value = val.toString();
                      },
                      onSaved: (val) => print(val),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          TextFormWidget(
            textController: controller.reasonTextController,
            dropDown: false,
            titleText: "Reason",
            maxLines: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Cancel",
                    style: TextStyle(fontSize: 10),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Request Leave", style: TextStyle(fontSize: 10)),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
