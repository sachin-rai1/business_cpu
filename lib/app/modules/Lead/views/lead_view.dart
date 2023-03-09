import 'package:business_cpu/app/modules/Sales/controllers/sales_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../data/constants.dart';
import '../controllers/lead_controller.dart';

class LeadView extends GetView<LeadController> {
  LeadView({Key? key}) : super(key: key);
  final leadController = Get.put(LeadController());
  final salesController = Get.put(SalesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LeadView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: LinearPercentIndicator(
              padding: const EdgeInsets.all(8.0),
              backgroundColor: Color(0XFFE7FDFF),
              width: Constants.width / 1.1,
              animation: true,
              animateFromLastPercent: true,
              lineHeight: 40,
              barRadius: Radius.circular(20),
              animationDuration: 2000,
              percent: controller.companyPercent,
              center: Text(
                "${controller.companyPercent * 100} %",
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              ),
              // linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Constants.secondaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "Company's Total Target : 20000/100000",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: LinearPercentIndicator(
              padding: const EdgeInsets.all(8.0),
              backgroundColor: Color(0XFFE7FDFF),
              width: Constants.width / 1.1,
              animation: true,
              animateFromLastPercent: true,
              lineHeight: 40,
              barRadius: Radius.circular(20),
              animationDuration: 2000,
              percent: controller.personalPercent,
              center: Text(
                "${controller.personalPercent * 100} %",
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              ),
              // linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Constants.secondaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "Personal Total Target : 6000/10000",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Lead View",
                  style: TextStyle(
                      fontSize: 25,
                      color: Constants.primaryColor,
                      fontWeight: FontWeight.bold),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 40,
              width: Constants.width,
              decoration: BoxDecoration(
                  color: Constants.secondaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Company",
                      style:
                          TextStyle(fontSize: 15, color: Constants.thirdColor)),
                  Text("Contact Person",
                      style:
                          TextStyle(fontSize: 15, color: Constants.thirdColor))
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (BuildContext context, index) {
                    return InkWell(
                      onTap: () {
                        AlertDialog alert = AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          scrollable: true,
                          content: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Company Name : ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Constants.secondaryColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: Text("Add to Sales")),
                                ],
                              ),
                              Text(
                                "Wilson Carder ",
                                style: TextStyle(
                                    color: Color(0XFF545454), fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Contact Person Name : ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Wilson Carder",
                                style: TextStyle(
                                    color: Color(0XFF545454), fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Contact No : ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "+ 91 9998658741 ",
                                    style: TextStyle(
                                        color: Color(0XFF545454), fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Personal Email : ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "Email ",
                                    style: TextStyle(
                                        color: Color(0XFF545454), fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Interested Product Name : ",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Interested Product Name",
                                style: TextStyle(
                                    color: Color(0XFF545454), fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Remarks :  ",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Lorem Ispum  ",
                                style: TextStyle(
                                    color: Color(0XFF545454), fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        );
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return alert;
                            });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 1),
                        child: Card(
                          color: Constants.thirdColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            height: 40,
                            width: Constants.width,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Wilson Carder",
                                      style: TextStyle(fontSize: 15)),
                                  Text("Contact Person",
                                      style: TextStyle(fontSize: 15))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  })),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {
          AlertDialog alert = AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            scrollable: true,
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Company Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextField(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Contact Person Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextField(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Contact Number",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextField(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Contact Person E-mail",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextField(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Interested Product Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextField(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Remarks",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextField(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: Constants.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Add",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Constants.secondaryColor),
                  ),
                )
              ],
            ),
          );
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return alert;
              });
        },
      ),
    );
  }
}