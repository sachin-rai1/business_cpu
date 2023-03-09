import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../data/constants.dart';
import '../controllers/sales_controller.dart';

class SalesView extends GetView<SalesController> {
  SalesView({Key? key}) : super(key: key);
  GetxController salesController = Get.put(SalesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: const Text('SalesView'),
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
                  "Sales View",
                  style: TextStyle(
                      fontSize: 25,
                      color: Constants.primaryColor,
                      fontWeight: FontWeight.bold),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: 40,
              width: Constants.width,
              decoration: BoxDecoration(
                  color: Constants.secondaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Company",
                      style: TextStyle(
                          fontSize: 15, color: Constants.thirdColor)),
                  Text("Product Name",
                      style: TextStyle(
                          fontSize: 15, color: Constants.thirdColor))
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
                              Text(
                                "Company Name : ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                "Wilson Carder ",
                                style: TextStyle(
                                    color: Color(0XFF545454), fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Product Name : ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Enter Product Name",
                                style: TextStyle(
                                    color: Color(0XFF545454), fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Qty : ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "500 ",
                                        style: TextStyle(
                                            color: Color(0XFF545454), fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Price : ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "50,000 ",
                                        style: TextStyle(
                                            color: Color(0XFF545454), fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Status : ",
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Pending",
                                    style: TextStyle(
                                        color: Color(0XFF545454), fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Remarks",
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
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 15),
                            width: Constants.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Wilson Carder",
                                        style: TextStyle(fontSize: 15)),
                                    Text("Product Name",
                                        style: TextStyle(fontSize: 15)),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("50000",
                                        style: TextStyle(fontSize: 15)),
                                    Text("view full details",
                                        style: TextStyle(fontSize: 10 , color: Colors.blue)),
                                  ],
                                ),
                              ],
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
                  "Client Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Client Name"
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Product Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Product Name"
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Contact Number",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Contact Number"
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Quantity",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: Constants.width /3,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Quantity"
                              ),
                            )),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                            width: Constants.width /3,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Price"
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Remarks",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Remarks"
                  ),
                ),
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
      ),
    );
  }
}
