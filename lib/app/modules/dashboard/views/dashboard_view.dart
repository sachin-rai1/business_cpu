import 'package:business_cpu/app/modules/Feedback/views/feedback_view.dart';
import 'package:business_cpu/app/modules/Greetings/views/greetings_view.dart';
import 'package:business_cpu/app/modules/LeaveApplication/views/leave_application_view.dart';
import 'package:business_cpu/app/modules/TaskDelegation/views/assign_task_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'package:get/get.dart';

import '../../../data/constants.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  final dashboardController = Get.put(DashboardController());
  final List<String> tasks = [
    "A Task",
    "B Task",
    "C Task",
    "D Task",
    "E Task",
    "F Task",
    "G Task",
    "H Task"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: speedDial(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            progressWidget(),
            taskToMe(),
            taskToOthers(),
            upcomingEvents(),
          ],
        ),
      ),
    );
  }

  progressWidget() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            progress("Your Target", 1200, 1800),
            Container(
                height: Constants.height / 10,
                width: 1,
                color: Constants.primaryColor),
            progress("Company's Target", 200000, 220000),
          ],
        ),
      ],
    );
  }

  taskToMe() {
    return Column(
      children: [
        // SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Task To Me",
                      style: TextStyle(
                          color: Constants.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  GestureDetector(
                    onTap: () => Get.to(() => AssignTaskView()),
                    child: Text("View All",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            // fontStyle: FontStyle.italic,
                            // color: Constants.primaryColor,
                            // fontWeight: FontWeight.bold,
                            fontSize: 16)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                  height: 250,
                  width: Constants.width / 1.1,
                  // padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    border: Border.all(color: Colors.grey),
                  ),
                  // color: Colors.red,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 15, left: 20, right: 20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Task Description",
                                        style: TextStyle(
                                            color: Constants.primaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16)),
                                    Icon(Icons.flag, color: Colors.red),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi.",
                                    style: TextStyle(fontSize: 12)),
                                SizedBox(height: 3),
                                // SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Assign To: ",
                                            style: TextStyle(
                                                color: Constants.primaryColor,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14)),
                                        Text("Craig Lubin",
                                            style: TextStyle(fontSize: 12)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Due Date: ",
                                            style: TextStyle(
                                                color: Constants.primaryColor,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14)),
                                        Text("18-02-23",
                                            style: TextStyle(fontSize: 12)),
                                      ],
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      );
                    },
                  )),
            ],
          ),
        ),
      ],
    );
  }

  taskToOthers() {
    return Column(
      children: [
        // SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Task To Others",
                      style: TextStyle(
                          color: Constants.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  GestureDetector(
                    onTap: () => Get.to(() => AssignTaskView()),
                    child: Text("View All",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            // fontStyle: FontStyle.italic,
                            // color: Constants.primaryColor,
                            // fontWeight: FontWeight.bold,
                            fontSize: 16)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                  height: 250,
                  width: Constants.width / 1.1,
                  // padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    border: Border.all(color: Colors.grey),
                  ),
                  // color: Colors.red,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 15, left: 20, right: 20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Task Description",
                                        style: TextStyle(
                                            color: Constants.primaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16)),
                                    Icon(Icons.flag, color: Colors.red),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi.",
                                    style: TextStyle(fontSize: 12)),
                                SizedBox(height: 3),
                                // SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Assign To: ",
                                            style: TextStyle(
                                                color: Constants.primaryColor,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14)),
                                        Text("Craig Lubin",
                                            style: TextStyle(fontSize: 12)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Due Date: ",
                                            style: TextStyle(
                                                color: Constants.primaryColor,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14)),
                                        Text("18-02-23",
                                            style: TextStyle(fontSize: 12)),
                                      ],
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      );
                    },
                  )),
            ],
          ),
        ),
      ],
    );
  }

  upcomingEvents() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Upcoming Events",
                      style: TextStyle(
                          color: Constants.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  GestureDetector(
                    onTap: () => Get.to(GreetingsView()),
                    child: Text("View All",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            // fontStyle: FontStyle.italic,
                            // color: Constants.primaryColor,
                            // fontWeight: FontWeight.bold,
                            fontSize: 16)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                  height: 250,
                  width: Constants.width / 1.1,
                  // padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    border: Border.all(color: Colors.grey),
                  ),
                  // color: Colors.red,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 15, left: 20, right: 20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Event Name",
                                    style: TextStyle(
                                        color: Constants.primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                SizedBox(height: 4),
                                Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi.",
                                    style: TextStyle(fontSize: 12)),
                                SizedBox(height: 3),
                                // SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Assign To: ",
                                            style: TextStyle(
                                                color: Constants.primaryColor,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14)),
                                        Text("Craig Lubin",
                                            style: TextStyle(fontSize: 12)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("On Date: ",
                                            style: TextStyle(
                                                color: Constants.primaryColor,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14)),
                                        Text("18-02-23",
                                            style: TextStyle(fontSize: 12)),
                                      ],
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      );
                    },
                  )),
            ],
          ),
        ),
        SizedBox(height: 40),
      ],
    );
  }

  speedDial() {
    return SpeedDial(
      spacing: 20,
      // both default to 16
      // marginRight: 18,
      // marginBottom: 20,
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 22.0),
      // this is ignored if animatedIcon is non null
      // child: Icon(Icons.add),
      // If true user is forced to close dial manually
      // by tapping main button and overlay is not rendered.
      closeManually: false,
      curve: Curves.bounceIn,
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      onOpen: () => print('OPENING DIAL'),
      onClose: () => print('DIAL CLOSED'),
      // tooltip: 'Speed Dial',
      // heroTag: 'speed-dial-hero-tag',
      backgroundColor: Constants.primaryColor,
      foregroundColor: Colors.white,
      elevation: 8.0,
      shape: CircleBorder(),
      children: [
        SpeedDialChild(
          child: Icon(Icons.keyboard_voice),
          backgroundColor: Constants.primaryColor,
          foregroundColor: Colors.white,
          label: 'Write FeedBack',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () => Get.to(FeedbackView()),
        ),
        SpeedDialChild(
          child: Icon(Icons.brush),
          backgroundColor: Constants.primaryColor,
          foregroundColor: Colors.white,
          label: 'Request Purchase',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () => print('Request Purchase'),
        ),
        SpeedDialChild(
          child: Icon(Icons.brush),
          backgroundColor: Constants.primaryColor,
          foregroundColor: Colors.white,
          label: 'Request Leave',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () => Get.to(LeaveApplicationView()),
        ),
        // SpeedDialChild(
        //     child: Icon(Icons.accessibility),
        //     backgroundColor: Constants.primaryColor,
        //     foregroundColor: Colors.white,
        //     label: 'Assign Task',
        //     labelStyle: TextStyle(fontSize: 18.0),
        //     onTap: () => Get.to(() => AssignTaskView())),
      ],
    );
  }

  progress(String target, int current, int total) {
    double prcnt = (current / total);
    print("object");
    print(prcnt);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: Constants.width / 2.2,
          // color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(target),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        CircularProgressIndicator(
                          value: prcnt,
                          valueColor:
                              AlwaysStoppedAnimation(Constants.primaryColor),
                          strokeWidth: 12,
                          backgroundColor:
                              Constants.primaryColor.withOpacity(0.3),
                        ),
                        Center(
                          child: Text("${(prcnt * 100).toStringAsFixed(1)} %"),
                          // child: buildProgress(),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text("$current / "),
                      Text(
                        "$total",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Constants.primaryColor),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
