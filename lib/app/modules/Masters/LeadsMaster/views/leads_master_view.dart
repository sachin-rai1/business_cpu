import 'dart:convert';
import 'package:business_cpu/app/data/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/constants.dart';
import '../controllers/leads_master_controller.dart';

class LeadsMasterView extends GetView<LeadsMasterController> {
  LeadsMasterView({Key? key}) : super(key: key);
  final LeadsMasterController leadsMasterController = Get.put(LeadsMasterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LeadsMasterView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 40,
              width: Constants.width,
              decoration: BoxDecoration(
                  color: Constants.primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Company",
                      style:
                          TextStyle(fontSize: 15, color: Constants.thirdColor)),
                  Text("Employee Name",
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
                        leadDetails(context);
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
                                  Text("Employee Name",
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
          _addLead(context);
        },
      ),
    );
  }

  void leadDetails(BuildContext context) {
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColTextWidget(
                  titleText: "Company Name", subText: "Wilson Carder"),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Constants.secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text("Add to Sales")),
            ],
          ),
          ColTextWidget(
              titleText: "Contact Person Name", subText: "Wilson Carder"),
          RowTextWidget(titleText: "Contact No", subText: "+9199985564"),
          RowTextWidget(titleText: "Personal Email", subText: "Email"),
          ColTextWidget(titleText: "Interested Product", subText: "subText"),
          ColTextWidget(titleText: "Remarks", subText: "subText"),
        ],
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  void _addLead(BuildContext context) {
    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      scrollable: true,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormWidget(
            dropDown: false,
            titleText: "Company Name",
          ),
          TextFormWidget(
              dropDown: false, titleText: "Contact Person Name"),
          TextFormWidget(dropDown: false, titleText: "Contact Number"),
          TextFormWidget(
              dropDown: false, titleText: "Contact Person Email"),
          RowTextWidget(titleText: "Interested Product", subText: ""),
          CustomSearchableDropDown(
            labelStyle: TextStyle(color: Colors.black87 , fontSize: 16),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              border: Border.all(
                color: Colors.grey.shade400,
                width: 2
              ),
              borderRadius: BorderRadius.circular(10)
            ),
            items: controller.fruits,
            label: 'Select Item',
            multiSelectTag: 'Item',
            multiSelect: true,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(0),
              child: Icon(Icons.search),
            ),
            dropDownMenuItems: controller.fruits.map((selectedType) {
              return selectedType;
            }).toList(),
            onChanged: (value) {
              if (value != null) {
                controller.selectedFruits = jsonDecode(value);
                print(controller.selectedFruits);
              } else {
                controller.selectedFruits.clear();
              }
            },
          ),
          SizedBox(height: 10,),
          TextFormWidget(dropDown: false, titleText: "Remarks"),
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
                  backgroundColor: Constants.primaryColor),
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
  }
}
