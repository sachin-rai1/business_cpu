import 'package:business_cpu/app/modules/Masters/CustomerMaster/AddCustomer/views/add_customer_view.dart';
import 'package:business_cpu/app/modules/Masters/CustomerMaster/ViewCustomer/views/view_customer_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../data/widgets.dart';
import '../controllers/customer_master_controller.dart';

class CustomerMasterView extends GetView<CustomerMasterController> {
  const CustomerMasterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer's Master"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) {
          return InkWell(
            onTap: (){
              Get.to(() => ViewCustomerView());
            },
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  children: [
                    RowTextWidget(
                      titleText: 'Company Name ',
                      subText: 'Company',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RowTextWidget(
                            titleText: "GSTIN", subText: "24CVWPR5575C"),
                        RowTextWidget(titleText: "Balance", subText: "10000"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => AddCustomerView());
        },
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}
